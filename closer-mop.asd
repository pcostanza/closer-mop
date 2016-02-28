(asdf:defsystem #:closer-mop
  :name "Closer to MOP"
  :description "Closer to MOP is a compatibility layer that rectifies many of the absent or incorrect CLOS MOP features across a broad range of Common Lisp implementations."
  :author "Pascal Costanza"
  :version "1.0.0"
  :licence "MIT-style license"
  :components
  ((:file "closer-mop-packages")
   (:file "closer-mop-shared" :depends-on ("closer-mop-packages"))
   (:file
    #+abcl	"closer-abcl"
    #+allegro   "closer-allegro"
    #+clisp     "closer-clisp"
    #+clozure   "closer-clozure"
    #+cmu       "closer-cmu"
    #+ecl       "closer-ecl"
    #+lispworks "closer-lispworks"
    #+mcl       "closer-mcl"
    #+sbcl      "closer-sbcl"
    #+scl       "closer-scl"
    :depends-on ("closer-mop-packages" "closer-mop-shared"))))
