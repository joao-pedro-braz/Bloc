"
! Custom id

Is intended to be subclassed for custom object-oriented ids
"
Class {
	#name : #BlElementUniqueId,
	#superclass : #BlElementId,
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #'Bloc-Basic-Support'
}

{ #category : #converting }
BlElementUniqueId class >> asBlocElementId [
	^ self uniqueInstance
]

{ #category : #accessing }
BlElementUniqueId class >> cleanUp [
	uniqueInstance := nil
]

{ #category : #testing }
BlElementUniqueId class >> isAbstract [
	^ self = BlElementUniqueId
]

{ #category : #accessing }
BlElementUniqueId class >> uniqueInstance [
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #comparing }
BlElementUniqueId >> = anObject [
	self == anObject ifTrue: [ ^ true ].
	^ self class = anObject class
]

{ #category : #accessing }
BlElementUniqueId >> description [
	^ self class comment
]

{ #category : #comparing }
BlElementUniqueId >> hash [
	^ self class hash
]