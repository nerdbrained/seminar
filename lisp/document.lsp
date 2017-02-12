;; TODO: we ought not to use ref so often, as it's brittle to changes in format
(h1 (remark (ref document 'title)))

(p (remark (ref (brief document) 'summary)))

(include (string "../document/" (ref document 'id)) #:markdown)

(h2 "Tags")

(ul
  ;; TODO: technically tags is for talks, not documents
  ;; make sure to update once talks get a non-JSON data structure
  (#:each tag (tags document)
    `((li ,(tag-link tag)))))
