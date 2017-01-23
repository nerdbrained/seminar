(h1 "Tag " (#:var tag))

(p "There have been "
   (#:var
    (string
      (ItemList (filter (! isnothing)
                        (List
                          (ItemQuantity
                            (count iscompleted talks)
                            "completed talk")
                          (ItemQuantity
                            (count (! iscompleted) talks)
                            "scheduled talk")
                          (ItemQuantity
                            (length documents)
                            "document")
                          (ItemQuantity
                            (length suggestions)
                            "topic suggestion"))))))
   " tagged with " (b (#:var tag)) ".")

(#:when (! (isempty related))
  (h2 "Related Tags")
  (ul (#:each t related
        `((li ,(tag-link (ref t 1)))))))

(#:when (! (iszero (count iscompleted talks)))
 (h2 "Completed Talks")

 (#:each t (reverse (filter iscompleted talks))
  (render-talk-brief (brief t))))

(#:when (! (iszero (count (! iscompleted) talks)))
 (h2 "Scheduled Talks")

 (#:each t (filter (! iscompleted) talks)
  (render-talk-brief (brief t))))

(#:when (! (isempty documents))
 (h2 "Documents")

 (#:each t documents
  (render-talk-brief (brief t))))

(#:when (! (isempty suggestions))
 (h2 ([id "suggestions"]) "Talk Suggestions")

 (#:each s suggestions
  (render-suggestion s)))
