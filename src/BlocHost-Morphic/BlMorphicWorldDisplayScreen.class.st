Class {
	#name : #BlMorphicWorldDisplayScreen,
	#superclass : #Form,
	#category : #'BlocHost-Morphic-World'
}

{ #category : #testing }
BlMorphicWorldDisplayScreen >> isFullscreen [
	^ false
]

{ #category : #other }
BlMorphicWorldDisplayScreen >> usableArea [
	"Answer the usable area of the receiver."

	^ self boundingBox deepCopy
]