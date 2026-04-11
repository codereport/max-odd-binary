maxOddBinaryCount: aString
	| ones zeros |
	ones := (aString count: [ :element | element = $1 ]) - 1.
	zeros := aString size - ones - 1.

	^ (String new: ones withAll: $1) , (String new: zeros withAll: $0) , $1
