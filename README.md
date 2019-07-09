# Helm Core Fragment

A catalog of MegaMek units in MTF and (MTF)JSON format.

The json versions are close approximations of the mtf structure, though unit name, model, alias, and nicknames are in separate fields. The schema is in progress and will probably be removed soon until its improved. 

`catalog.json` includes entries for each unit where
```
	id: Unit file name (sans extension)
	name: "
	model: "
	alias: Alternative name, e.g. Daishi. Optional.
```

`catalog.json` and json files and  were generated with a separate MTF parser that I hope to release eventually. 
