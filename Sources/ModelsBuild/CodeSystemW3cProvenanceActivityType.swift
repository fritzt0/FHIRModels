//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 6.0.0-ballot2
//  Copyright 2024 Apple Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import FMCore

/**
 This value set includes W3C PROV Data Model Activity concepts, which are treated as codes in this valueset.  Some
 adaptations were made to make these concepts suitable values for the Provenance.activity element. Coded concepts are
 from PROV-DM and the display names are their counterparts in PROV-N (human readable notation syntax
 specification).[code system OID: http://www.w3.org/TR/2013/REC-prov-dm-20130430/ and http://www.w3.org/TR/2013/REC-
 prov-n-20130430/]
 
 URL: http://hl7.org/fhir/w3c-provenance-activity-type
 */
public enum W3cProvenanceActivityType: String, FHIRPrimitiveType {
	
	/// Ascribing of an entity (object/document) to an agent.
	case attribution = "Attribution"
	
	///  An aggregating activity that results in composition of an entity, which provides a structure to some
	/// constituents that must themselves be entities. These constituents are said to be member of the collections.
	case collection = "Collection"
	
	/// The exchange of some unspecified entity by two activities, one activity using some entity generated by the
	/// other. A communication implies that activity a2 is dependent on another activity, a1, by way of some unspecified
	/// entity that is generated by a1 and used by a2.
	case communication = "Communication"
	
	/// A transformation of an entity into another, an update of an entity resulting in a new one, or the construction
	/// of a new entity based on a pre-existing entity. For an entity to be transformed from, created from, or resulting
	/// from an update to another, there must be some underpinning activity or activities performing the necessary
	/// action(s) resulting in such a derivation. A derivation can be described at various levels of precision. In its
	/// simplest form, derivation relates two entities. Optionally, attributes can be added to represent further
	/// information about the derivation. If the derivation is the result of a single known activity, then this activity
	/// can also be optionally expressed. To provide a completely accurate description of the derivation, the generation
	/// and usage of the generated and used entities, respectively, can be provided, so as to make the derivation path,
	/// through usage, activity, and generation, explicit. Optional information such as activity, generation, and usage
	/// can be linked to derivations to aid analysis of provenance and to facilitate provenance-based reproducibility.
	case derivation = "Derivation"
	
	/// When an activity is deemed to have been ended by an entity, known as trigger. The activity no longer exists
	/// after its end. Any usage, generation, or invalidation involving an activity precedes the activity's end. An end
	/// may refer to a trigger entity that terminated the activity, or to an activity, known as ender that generated the
	/// trigger.
	case end = "End"
	
	/// The completion of production of a new entity by an activity. This entity did not exist before generation and
	/// becomes available for usage after this generation. Given that a generation is the completion of production of an
	/// entity, it is instantaneous.
	case generation = "Generation"
	
	/// The start of the destruction, cessation, or expiry of an existing entity by an activity. The entity is no longer
	/// available for use (or further invalidation) after invalidation. Any generation or usage of an entity precedes
	/// its invalidation. Given that an invalidation is the start of destruction, cessation, or expiry, it is
	/// instantaneous.
	case invalidation = "Invalidation"
	
	/// Refers to something produced by some agent with direct experience and knowledge about the topic, at the time of
	/// the topic's study, without benefit from hindsight. Because of the directness of primary sources, they 'speak for
	/// themselves' in ways that cannot be captured through the filter of secondary sources. As such, it is important
	/// for secondary sources to reference those primary sources from which they were derived, so that their reliability
	/// can be investigated. It is also important to note that a given entity might be a primary source for one entity
	/// but not another. It is the reason why Primary Source is defined as a relation as opposed to a subtype of Entity.
	case primarySource = "Primary-Source"
	
	/// The repeat of (some or all of) an entity, such as text or image, by someone who might or might not be its
	/// original author. A quotation relation is a kind of derivation relation, for which an entity was derived from a
	/// preceding entity by copying, or 'quoting', some or all of it.
	case quotation = "Quotation"
	
	/// A derivation for which the resulting entity is a revised version of some original. The implication here is that
	/// the resulting entity contains substantial content from the original. A revision relation is a kind of derivation
	/// relation from a revised entity to a preceding entity.
	case revision = "Revision"
	
	/// When an activity is deemed to have been started by an entity, known as trigger. The activity did not exist
	/// before its start. Any usage, generation, or invalidation involving an activity follows the activity's start. A
	/// start may refer to a trigger entity that set off the activity, or to an activity, known as starter, that
	/// generated the trigger. Given that a start is when an activity is deemed to have started, it is instantaneous.
	case start = "Start"
	
	/// the beginning of utilizing an entity by an activity. Before usage, the activity had not begun to utilize this
	/// entity and could not have been affected by the entity.  (Note: This definition is formulated for a given usage;
	/// it is permitted for an activity to have used a same entity multiple times.) Given that a usage is the beginning
	/// of utilizing an entity, it is instantaneous.
	case usage = "Usage"
}