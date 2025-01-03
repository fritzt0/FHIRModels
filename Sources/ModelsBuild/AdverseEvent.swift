//
//  AdverseEvent.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/AdverseEvent)
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
 An event that may be related to unintended effects on a patient or research participant.
 
 An event (i.e. any change to current patient status) that may be related to unintended effects on a patient or research
 participant. The unintended effects may require additional monitoring, treatment, hospitalization, or may result in
 death. The AdverseEvent resource also extends to potential or avoided events that could have had such effects. There
 are two major domains where the AdverseEvent resource is expected to be used. One is in clinical care reported adverse
 events and the other is in reporting adverse events in clinical  research trial management. Adverse events can be
 reported by healthcare providers, patients, caregivers or by medical products manufacturers. Given the differences
 between these two concepts, we recommend consulting the domain specific implementation guides when implementing the
 AdverseEvent Resource. The implementation guides include specific extensions, value sets and constraints.
 */
open class AdverseEvent: DomainResource {
	
	override open class var resourceType: ResourceType { return .adverseEvent }
	
	/// All possible types for "cause[x]"
	public enum CauseX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// All possible types for "effect[x]"
	public enum EffectX: Hashable {
		case dateTime(FHIRPrimitive<DateTime>)
		case period(Period)
	}
	
	/// Business identifier for the event
	public var identifier: [Identifier]?
	
	/// in-progress | completed | entered-in-error | unknown
	public var status: FHIRPrimitive<FHIRString>
	
	/// Whether the event actually happened or was a near miss. Note that this is independent of whether anyone was
	/// affected or harmed or how severely.
	public var actuality: FHIRPrimitive<AdverseEventActuality>
	
	/// wrong-patient | procedure-mishap | medication-mishap | device | unsafe-physical-environment | hospital-aquired-
	/// infection | wrong-body-site
	public var category: [CodeableConcept]?
	
	/// Event or incident that occurred or was averted
	public var code: CodeableConcept?
	
	/// Subject impacted by event
	public var subject: Reference
	
	/// The Encounter associated with the start of the AdverseEvent
	public var encounter: Reference?
	
	/// When the cause of the AdverseEvent occurred
	/// One of `cause[x]`
	public var cause: CauseX?
	
	/// When the effect of the AdverseEvent occurred
	/// One of `effect[x]`
	public var effect: EffectX?
	
	/// When the event was detected
	public var detected: FHIRPrimitive<DateTime>?
	
	/// When the event was recorded
	public var recordedDate: FHIRPrimitive<DateTime>?
	
	/// Effect on the subject due to this event
	public var resultingEffect: [Reference]?
	
	/// Location where adverse event occurred
	public var location: Reference?
	
	/// Seriousness or gravity of the event
	public var seriousness: CodeableConcept?
	
	/// Type of outcome from the adverse event
	public var outcome: [CodeableConcept]?
	
	/// Who recorded the adverse event
	public var recorder: Reference?
	
	/// Who was involved in the adverse event or the potential adverse event and what they did
	public var participant: [AdverseEventParticipant]?
	
	/// Research study that the subject is enrolled in
	public var study: [Reference]?
	
	/// Considered likely or probable or anticipated in the research study
	public var expectedInResearchStudy: FHIRPrimitive<FHIRBool>?
	
	/// The suspected agent causing the adverse event
	public var suspectEntity: [AdverseEventSuspectEntity]?
	
	/// Contributing factors suspected to have increased the probability or severity of the adverse event
	public var contributingFactor: [CodeableReference]?
	
	/// Preventive actions that contributed to avoiding the adverse event
	public var preventiveAction: [CodeableReference]?
	
	/// Ameliorating actions taken after the adverse event occurred in order to reduce the extent of harm
	public var mitigatingAction: [CodeableReference]?
	
	/// Subject medical history or document relevant to this adverse event
	public var supportingInfo: [CodeableReference]?
	
	/// Comment on adverse event
	public var note: [Annotation]?
	
	/// Designated initializer taking all required properties
	public init(actuality: FHIRPrimitive<AdverseEventActuality>, status: FHIRPrimitive<FHIRString>, subject: Reference) {
		self.actuality = actuality
		self.status = status
		self.subject = subject
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actuality: FHIRPrimitive<AdverseEventActuality>,
		category: [CodeableConcept]? = nil,
		cause: CauseX? = nil,
		code: CodeableConcept? = nil,
		contained: [ResourceProxy]? = nil,
		contributingFactor: [CodeableReference]? = nil,
		detected: FHIRPrimitive<DateTime>? = nil,
		effect: EffectX? = nil,
		encounter: Reference? = nil,
		expectedInResearchStudy: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		location: Reference? = nil,
		meta: Meta? = nil,
		mitigatingAction: [CodeableReference]? = nil,
		modifierExtension: [Extension]? = nil,
		note: [Annotation]? = nil,
		outcome: [CodeableConcept]? = nil,
		participant: [AdverseEventParticipant]? = nil,
		preventiveAction: [CodeableReference]? = nil,
		recordedDate: FHIRPrimitive<DateTime>? = nil,
		recorder: Reference? = nil,
		resultingEffect: [Reference]? = nil,
		seriousness: CodeableConcept? = nil,
		status: FHIRPrimitive<FHIRString>,
		study: [Reference]? = nil,
		subject: Reference,
		supportingInfo: [CodeableReference]? = nil,
		suspectEntity: [AdverseEventSuspectEntity]? = nil,
		text: Narrative? = nil
	) {
		self.init(actuality: actuality, status: status, subject: subject)
		self.category = category
		self.cause = cause
		self.code = code
		self.contained = contained
		self.contributingFactor = contributingFactor
		self.detected = detected
		self.effect = effect
		self.encounter = encounter
		self.expectedInResearchStudy = expectedInResearchStudy
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.language = language
		self.location = location
		self.meta = meta
		self.mitigatingAction = mitigatingAction
		self.modifierExtension = modifierExtension
		self.note = note
		self.outcome = outcome
		self.participant = participant
		self.preventiveAction = preventiveAction
		self.recordedDate = recordedDate
		self.recorder = recorder
		self.resultingEffect = resultingEffect
		self.seriousness = seriousness
		self.study = study
		self.supportingInfo = supportingInfo
		self.suspectEntity = suspectEntity
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actuality; case _actuality
		case category
		case causeDateTime; case _causeDateTime
		case causePeriod
		case code
		case contributingFactor
		case detected; case _detected
		case effectDateTime; case _effectDateTime
		case effectPeriod
		case encounter
		case expectedInResearchStudy; case _expectedInResearchStudy
		case identifier
		case location
		case mitigatingAction
		case note
		case outcome
		case participant
		case preventiveAction
		case recordedDate; case _recordedDate
		case recorder
		case resultingEffect
		case seriousness
		case status; case _status
		case study
		case subject
		case supportingInfo
		case suspectEntity
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actuality = try FHIRPrimitive<AdverseEventActuality>(from: _container, forKey: .actuality, auxiliaryKey: ._actuality)
		self.category = try [CodeableConcept](from: _container, forKeyIfPresent: .category)
		var _t_cause: CauseX? = nil
		if let causeDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .causeDateTime, auxiliaryKey: ._causeDateTime) {
			if _t_cause != nil {
				throw DecodingError.dataCorruptedError(forKey: .causeDateTime, in: _container, debugDescription: "More than one value provided for \"cause\"")
			}
			_t_cause = .dateTime(causeDateTime)
		}
		if let causePeriod = try Period(from: _container, forKeyIfPresent: .causePeriod) {
			if _t_cause != nil {
				throw DecodingError.dataCorruptedError(forKey: .causePeriod, in: _container, debugDescription: "More than one value provided for \"cause\"")
			}
			_t_cause = .period(causePeriod)
		}
		self.cause = _t_cause
		self.code = try CodeableConcept(from: _container, forKeyIfPresent: .code)
		self.contributingFactor = try [CodeableReference](from: _container, forKeyIfPresent: .contributingFactor)
		self.detected = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .detected, auxiliaryKey: ._detected)
		var _t_effect: EffectX? = nil
		if let effectDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .effectDateTime, auxiliaryKey: ._effectDateTime) {
			if _t_effect != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectDateTime, in: _container, debugDescription: "More than one value provided for \"effect\"")
			}
			_t_effect = .dateTime(effectDateTime)
		}
		if let effectPeriod = try Period(from: _container, forKeyIfPresent: .effectPeriod) {
			if _t_effect != nil {
				throw DecodingError.dataCorruptedError(forKey: .effectPeriod, in: _container, debugDescription: "More than one value provided for \"effect\"")
			}
			_t_effect = .period(effectPeriod)
		}
		self.effect = _t_effect
		self.encounter = try Reference(from: _container, forKeyIfPresent: .encounter)
		self.expectedInResearchStudy = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .expectedInResearchStudy, auxiliaryKey: ._expectedInResearchStudy)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		self.mitigatingAction = try [CodeableReference](from: _container, forKeyIfPresent: .mitigatingAction)
		self.note = try [Annotation](from: _container, forKeyIfPresent: .note)
		self.outcome = try [CodeableConcept](from: _container, forKeyIfPresent: .outcome)
		self.participant = try [AdverseEventParticipant](from: _container, forKeyIfPresent: .participant)
		self.preventiveAction = try [CodeableReference](from: _container, forKeyIfPresent: .preventiveAction)
		self.recordedDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .recordedDate, auxiliaryKey: ._recordedDate)
		self.recorder = try Reference(from: _container, forKeyIfPresent: .recorder)
		self.resultingEffect = try [Reference](from: _container, forKeyIfPresent: .resultingEffect)
		self.seriousness = try CodeableConcept(from: _container, forKeyIfPresent: .seriousness)
		self.status = try FHIRPrimitive<FHIRString>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.study = try [Reference](from: _container, forKeyIfPresent: .study)
		self.subject = try Reference(from: _container, forKey: .subject)
		self.supportingInfo = try [CodeableReference](from: _container, forKeyIfPresent: .supportingInfo)
		self.suspectEntity = try [AdverseEventSuspectEntity](from: _container, forKeyIfPresent: .suspectEntity)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actuality.encode(on: &_container, forKey: .actuality, auxiliaryKey: ._actuality)
		try category?.encode(on: &_container, forKey: .category)
		if let _enum = cause {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .causeDateTime, auxiliaryKey: ._causeDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .causePeriod)
			}
		}
		try code?.encode(on: &_container, forKey: .code)
		try contributingFactor?.encode(on: &_container, forKey: .contributingFactor)
		try detected?.encode(on: &_container, forKey: .detected, auxiliaryKey: ._detected)
		if let _enum = effect {
			switch _enum {
			case .dateTime(let _value):
				try _value.encode(on: &_container, forKey: .effectDateTime, auxiliaryKey: ._effectDateTime)
			case .period(let _value):
				try _value.encode(on: &_container, forKey: .effectPeriod)
			}
		}
		try encounter?.encode(on: &_container, forKey: .encounter)
		try expectedInResearchStudy?.encode(on: &_container, forKey: .expectedInResearchStudy, auxiliaryKey: ._expectedInResearchStudy)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try location?.encode(on: &_container, forKey: .location)
		try mitigatingAction?.encode(on: &_container, forKey: .mitigatingAction)
		try note?.encode(on: &_container, forKey: .note)
		try outcome?.encode(on: &_container, forKey: .outcome)
		try participant?.encode(on: &_container, forKey: .participant)
		try preventiveAction?.encode(on: &_container, forKey: .preventiveAction)
		try recordedDate?.encode(on: &_container, forKey: .recordedDate, auxiliaryKey: ._recordedDate)
		try recorder?.encode(on: &_container, forKey: .recorder)
		try resultingEffect?.encode(on: &_container, forKey: .resultingEffect)
		try seriousness?.encode(on: &_container, forKey: .seriousness)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try study?.encode(on: &_container, forKey: .study)
		try subject.encode(on: &_container, forKey: .subject)
		try supportingInfo?.encode(on: &_container, forKey: .supportingInfo)
		try suspectEntity?.encode(on: &_container, forKey: .suspectEntity)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdverseEvent else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actuality == _other.actuality
		    && category == _other.category
		    && cause == _other.cause
		    && code == _other.code
		    && contributingFactor == _other.contributingFactor
		    && detected == _other.detected
		    && effect == _other.effect
		    && encounter == _other.encounter
		    && expectedInResearchStudy == _other.expectedInResearchStudy
		    && identifier == _other.identifier
		    && location == _other.location
		    && mitigatingAction == _other.mitigatingAction
		    && note == _other.note
		    && outcome == _other.outcome
		    && participant == _other.participant
		    && preventiveAction == _other.preventiveAction
		    && recordedDate == _other.recordedDate
		    && recorder == _other.recorder
		    && resultingEffect == _other.resultingEffect
		    && seriousness == _other.seriousness
		    && status == _other.status
		    && study == _other.study
		    && subject == _other.subject
		    && supportingInfo == _other.supportingInfo
		    && suspectEntity == _other.suspectEntity
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actuality)
		hasher.combine(category)
		hasher.combine(cause)
		hasher.combine(code)
		hasher.combine(contributingFactor)
		hasher.combine(detected)
		hasher.combine(effect)
		hasher.combine(encounter)
		hasher.combine(expectedInResearchStudy)
		hasher.combine(identifier)
		hasher.combine(location)
		hasher.combine(mitigatingAction)
		hasher.combine(note)
		hasher.combine(outcome)
		hasher.combine(participant)
		hasher.combine(preventiveAction)
		hasher.combine(recordedDate)
		hasher.combine(recorder)
		hasher.combine(resultingEffect)
		hasher.combine(seriousness)
		hasher.combine(status)
		hasher.combine(study)
		hasher.combine(subject)
		hasher.combine(supportingInfo)
		hasher.combine(suspectEntity)
	}
}

/**
 Who was involved in the adverse event or the potential adverse event and what they did.
 
 Indicates who or what participated in the adverse event and how they were involved.
 */
open class AdverseEventParticipant: BackboneElement {
	
	/// Type of involvement
	public var function: CodeableConcept?
	
	/// Who was involved in the adverse event or the potential adverse event
	public var actor: Reference
	
	/// Designated initializer taking all required properties
	public init(actor: Reference) {
		self.actor = actor
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		actor: Reference,
		`extension`: [Extension]? = nil,
		function: CodeableConcept? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(actor: actor)
		self.`extension` = `extension`
		self.function = function
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case actor
		case function
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.actor = try Reference(from: _container, forKey: .actor)
		self.function = try CodeableConcept(from: _container, forKeyIfPresent: .function)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try actor.encode(on: &_container, forKey: .actor)
		try function?.encode(on: &_container, forKey: .function)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdverseEventParticipant else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return actor == _other.actor
		    && function == _other.function
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(actor)
		hasher.combine(function)
	}
}

/**
 The suspected agent causing the adverse event.
 
 Describes the entity that is suspected to have caused the adverse event.
 */
open class AdverseEventSuspectEntity: BackboneElement {
	
	/// Refers to the specific entity that caused the adverse event
	public var instance: CodeableReference
	
	/// Information on the possible cause of the event
	public var causality: AdverseEventSuspectEntityCausality?
	
	/// Designated initializer taking all required properties
	public init(instance: CodeableReference) {
		self.instance = instance
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		causality: AdverseEventSuspectEntityCausality? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		instance: CodeableReference,
		modifierExtension: [Extension]? = nil
	) {
		self.init(instance: instance)
		self.causality = causality
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case causality
		case instance
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.causality = try AdverseEventSuspectEntityCausality(from: _container, forKeyIfPresent: .causality)
		self.instance = try CodeableReference(from: _container, forKey: .instance)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try causality?.encode(on: &_container, forKey: .causality)
		try instance.encode(on: &_container, forKey: .instance)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdverseEventSuspectEntity else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return causality == _other.causality
		    && instance == _other.instance
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(causality)
		hasher.combine(instance)
	}
}

/**
 Information on the possible cause of the event.
 */
open class AdverseEventSuspectEntityCausality: BackboneElement {
	
	/// Method of evaluating the relatedness of the suspected entity to the event
	public var assessmentMethod: CodeableConcept?
	
	/// Result of the assessment regarding the relatedness of the suspected entity to the event
	public var entityRelatedness: CodeableConcept?
	
	/// Author of the information on the possible cause of the event
	public var author: Reference?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		assessmentMethod: CodeableConcept? = nil,
		author: Reference? = nil,
		entityRelatedness: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.assessmentMethod = assessmentMethod
		self.author = author
		self.entityRelatedness = entityRelatedness
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assessmentMethod
		case author
		case entityRelatedness
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assessmentMethod = try CodeableConcept(from: _container, forKeyIfPresent: .assessmentMethod)
		self.author = try Reference(from: _container, forKeyIfPresent: .author)
		self.entityRelatedness = try CodeableConcept(from: _container, forKeyIfPresent: .entityRelatedness)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assessmentMethod?.encode(on: &_container, forKey: .assessmentMethod)
		try author?.encode(on: &_container, forKey: .author)
		try entityRelatedness?.encode(on: &_container, forKey: .entityRelatedness)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? AdverseEventSuspectEntityCausality else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return assessmentMethod == _other.assessmentMethod
		    && author == _other.author
		    && entityRelatedness == _other.entityRelatedness
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assessmentMethod)
		hasher.combine(author)
		hasher.combine(entityRelatedness)
	}
}
