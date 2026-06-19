# Analyse et débogage d’un projet C basé sur BLAS

Ce projet présente l’analyse, la compilation et le débogage d’un programme C structurant une petite bibliothèque numérique basée sur **BLAS** (*Basic Linear Algebra Subprograms*). Le travail porte sur la compréhension de l’architecture du code, l’identification des erreurs et l’utilisation d’outils classiques de diagnostic sous environnement Unix [web:1560][web:1384].

## Contexte

Ce dépôt a été réalisé dans un cadre pédagogique autour de la programmation scientifique en C. L’objectif principal est de manipuler un projet modulaire avec fichiers source, en-têtes, Makefile et outils de débogage afin de comprendre les bonnes pratiques de développement et de validation d’un code numérique [web:1560][web:1567].

## Objectifs

- Analyser la structure globale du projet.
- Compiler correctement le programme à l’aide du `Makefile`.
- Identifier les erreurs d’exécution ou de mémoire.
- Utiliser des outils de débogage comme **GDB** et **Valgrind**.
- Documenter les observations et les corrections apportées [web:1561][web:1563].

## Outils utilisés

- **Langage** : C
- **Build system** : Make / Makefile
- **Debug** : GDB
- **Analyse mémoire** : Valgrind
- **Environnement** : Linux / Unix [web:1561][web:1564]

## Structure du projet

- `include/` : fichiers d’en-tête du projet.
- `src/` : fichiers source C.
- `Makefile` : compilation du projet.
- `README.md` : présentation du dépôt.
- `Rapport_Analyse_BLAS_Bensmail.pdf` : rapport principal d’analyse.
- `TD1_Debugging and Profiling.pdf` : document complémentaire sur le débogage et le profiling [file:1550][file:1569].

## Compilation

Depuis la racine du projet, compiler avec :

```bash
make
```

Si une cible de nettoyage est définie dans le `Makefile`, on peut aussi utiliser :

```bash
make clean
make
```

Un README technique gagne à fournir des commandes simples, vérifiables et directement réutilisables pour faciliter la prise en main du projet [web:1560][web:1571].

## Débogage et analyse

Le projet a été étudié à l’aide d’outils classiques de débogage et d’analyse mémoire, notamment **GDB** pour l’exécution pas à pas et **Valgrind** pour la détection d’erreurs mémoire [web:1561][web:1565].

Le nom exact de l’exécutable dépend de la cible définie dans le `Makefile`. Il peut être identifié après compilation selon l’organisation choisie dans le projet [web:1572][web:1574].

## Résultats attendus

Ce projet permet de :
- mieux comprendre l’organisation d’un code C modulaire ;
- pratiquer la compilation avec `make` ;
- apprendre à localiser des erreurs logiques ou mémoire ;
- renforcer les bases en développement scientifique et en débogage bas niveau [web:1560][web:1567].

## Documentation

- `Rapport_Analyse_BLAS_Bensmail.pdf`
- `TD1_Debugging and Profiling.pdf` [file:1550]

## Auteur

**Salma Bensmail**
