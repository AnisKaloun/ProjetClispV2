
# CLISP vers ASM et l'implémentation dans la machine virtuelle

## Utilisation :

### Premiere methode
* sur l'invité de commande Clisp faire (load "test.lisp")

### Deuxième methode
* ouvrir Clisp
* (load "compilateur")
* (load "vm")
* (compilation "fichierACompiler" "nomFichierDestination")

Par Exemple : (compilation "fibo.lisp" "fibo.asm")

* (make-vm 'vm taille)
* (vm_read 'vm "nomFichierCompile")

Par Exemple : (vm_read 'vm "fibo.asm")

* (vm_exec 'vm)

## Remarques :
Pour changer les valeurs de Fibo ou de Fact il est nécessaire de recompiler et de relancer la vm avec le nouveau fichier .ASM
