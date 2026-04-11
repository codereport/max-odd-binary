maxOddBinarySort: aString
	^ aString sorted reverse join allButFirst , $1
