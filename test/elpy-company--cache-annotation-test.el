(ert-deftest elpy-company--cache-annotation ()
  (elpy-testcase ()
    (setq elpy-company--cache (make-hash-table :test #'equal))
    (puthash "test" '((suffix . "foo")
                      (annotation . "anno")
                      (docstring . "doc"))
             elpy-company--cache )

    (should (equal (elpy-company--cache-annotation "test")
                   "anno"))))
