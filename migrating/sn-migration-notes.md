# Note on Migration of ServiceNow Tokyo content to DITA 2.0

## Evaluation technique

1. Used global change to change DOCTYPE declarations to DITA 2.x versions
1. Opened itsa-product-documentation.ditamap, which includes most of the content, and ran map validation on it to determine what was now invalid (starting content is reliably valid).

## Validation results:

* 9 `<linktext>` in topicrefs within maps
  * Global change to keytext   
* About 3500 `<substeps>` elements
  * Global change `<(/)?substep` to `<$1step` 
* 1900 `<resourceid>` elements with @id that should be @appid
  * Global change `@id` to `@appid` 
* 2 `<titlealts>` elements
  * Manually corrected
* 104 `<sectiondiv>` elements
* 387 @locktitle attributes
  * Global change for most (search on `\s+locktitle="[^"]+">`)
  * Manual change for remaining not matched
* 66 @navtitle attributes
  * Global change to remove. 
* 3 @title attributes (on map)
  * Manually removed 
* 1 `<data-about>` element
  * Manually removed
* 25 `<itemgroup>` elements
  * Global change to `<div>`
* 31 `@copy-to` attributes
  * Implemented XQuery refactor 
* 1 `@domains` attribute
  * Manually corrected 
* `@chunk` to-content to combine
  
  
 Took about 4 hours to do the conversion, including time to implement the refactor.
 
 