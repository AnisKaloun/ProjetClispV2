
;; chargement du compilateur
(require "compilateur.lisp")

;;chargement de la vm
(require "vm.lisp")


;;test du fact
(format t "~%Tests de la fonction fact :~%")

(format t "~%generation du code ASM :~%")

(compilation "fact.lisp" "fact.asm")


(make-vm 'vmtest 300000)

(vm_read 'vmtest "fact.asm")

(format t "~%Resultat de la fonction fact :~%")

(vm_exec 'vmtest)

;;test de fibonnaci
(format t "~%Tests de la fonction fibonnaci :~%")

(format t "~%generation du code ASM :~%")

(compilation "fibo.lisp" "fibo.asm")

(make-vm 'vm 300000)

(format t "~%Resultat de la fonction fibo :~%")

(vm_read 'vm "fibo.asm")

(vm_exec 'vm)
