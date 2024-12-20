//
//  TestScript.swift
//  HealthSoftware
//
//  Generated from FHIR 6.0.0-ballot2 (http://hl7.org/fhir/StructureDefinition/TestScript)
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
 Describes a set of tests.
 
 A structured set of tests against a FHIR server or client implementation to determine compliance against the FHIR
 specification.
 */
open class TestScript: DomainResource {
	
	override open class var resourceType: ResourceType { return .testScript }
	
	/// All possible types for "versionAlgorithm[x]"
	public enum VersionAlgorithmX: Hashable {
		case coding(Coding)
		case string(FHIRPrimitive<FHIRString>)
	}
	
	/// Canonical identifier for this test script, represented as a URI (globally unique)
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Additional identifier for the test script
	public var identifier: [Identifier]?
	
	/// Business version of the test script
	public var version: FHIRPrimitive<FHIRString>?
	
	/// How to compare versions
	/// One of `versionAlgorithm[x]`
	public var versionAlgorithm: VersionAlgorithmX?
	
	/// Name for this test script (computer friendly)
	public var name: FHIRPrimitive<FHIRString>
	
	/// Name for this test script (human friendly)
	public var title: FHIRPrimitive<FHIRString>?
	
	/// The status of this test script. Enables tracking the life-cycle of the content.
	public var status: FHIRPrimitive<PublicationStatus>
	
	/// For testing purposes, not real usage
	public var experimental: FHIRPrimitive<FHIRBool>?
	
	/// Date last changed
	public var date: FHIRPrimitive<DateTime>?
	
	/// Name of the publisher/steward (organization or individual)
	public var publisher: FHIRPrimitive<FHIRString>?
	
	/// Contact details for the publisher
	public var contact: [ContactDetail]?
	
	/// Natural language description of the test script
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The context that the content is intended to support
	public var useContext: [UsageContext]?
	
	/// Intended jurisdiction for test script (if applicable)
	public var jurisdiction: [CodeableConcept]?
	
	/// Why this test script is defined
	public var purpose: FHIRPrimitive<FHIRString>?
	
	/// Use and/or publishing restrictions
	public var copyright: FHIRPrimitive<FHIRString>?
	
	/// Copyright holder and year(s)
	public var copyrightLabel: FHIRPrimitive<FHIRString>?
	
	/// An abstract server representing a client or sender in a message exchange
	public var origin: [TestScriptOrigin]?
	
	/// An abstract server representing a destination or receiver in a message exchange
	public var destination: [TestScriptDestination]?
	
	/// Required capability that is assumed to function correctly on the FHIR server being tested
	public var metadata: TestScriptMetadata?
	
	/// Indication of the artifact(s) that are tested by this test case
	public var scope: [TestScriptScope]?
	
	/// Fixture in the test script - by reference (uri)
	public var fixture: [TestScriptFixture]?
	
	/// Reference of the validation profile
	public var profile: [FHIRPrimitive<Canonical>]?
	
	/// Placeholder for evaluated elements
	public var variable: [TestScriptVariable]?
	
	/// A series of required setup operations before tests are executed
	public var setup: TestScriptSetup?
	
	/// A test in this script
	public var test: [TestScriptTest]?
	
	/// A series of required clean up steps
	public var teardown: TestScriptTeardown?
	
	/// A common collection of actions in this script
	public var common: [TestScriptCommon]?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, status: FHIRPrimitive<PublicationStatus>) {
		self.name = name
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		common: [TestScriptCommon]? = nil,
		contact: [ContactDetail]? = nil,
		contained: [ResourceProxy]? = nil,
		copyright: FHIRPrimitive<FHIRString>? = nil,
		copyrightLabel: FHIRPrimitive<FHIRString>? = nil,
		date: FHIRPrimitive<DateTime>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		destination: [TestScriptDestination]? = nil,
		experimental: FHIRPrimitive<FHIRBool>? = nil,
		`extension`: [Extension]? = nil,
		fixture: [TestScriptFixture]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		jurisdiction: [CodeableConcept]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		metadata: TestScriptMetadata? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		origin: [TestScriptOrigin]? = nil,
		profile: [FHIRPrimitive<Canonical>]? = nil,
		publisher: FHIRPrimitive<FHIRString>? = nil,
		purpose: FHIRPrimitive<FHIRString>? = nil,
		scope: [TestScriptScope]? = nil,
		setup: TestScriptSetup? = nil,
		status: FHIRPrimitive<PublicationStatus>,
		teardown: TestScriptTeardown? = nil,
		test: [TestScriptTest]? = nil,
		text: Narrative? = nil,
		title: FHIRPrimitive<FHIRString>? = nil,
		url: FHIRPrimitive<FHIRURI>? = nil,
		useContext: [UsageContext]? = nil,
		variable: [TestScriptVariable]? = nil,
		version: FHIRPrimitive<FHIRString>? = nil,
		versionAlgorithm: VersionAlgorithmX? = nil
	) {
		self.init(name: name, status: status)
		self.common = common
		self.contact = contact
		self.contained = contained
		self.copyright = copyright
		self.copyrightLabel = copyrightLabel
		self.date = date
		self.description_fhir = description_fhir
		self.destination = destination
		self.experimental = experimental
		self.`extension` = `extension`
		self.fixture = fixture
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.jurisdiction = jurisdiction
		self.language = language
		self.meta = meta
		self.metadata = metadata
		self.modifierExtension = modifierExtension
		self.origin = origin
		self.profile = profile
		self.publisher = publisher
		self.purpose = purpose
		self.scope = scope
		self.setup = setup
		self.teardown = teardown
		self.test = test
		self.text = text
		self.title = title
		self.url = url
		self.useContext = useContext
		self.variable = variable
		self.version = version
		self.versionAlgorithm = versionAlgorithm
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case common
		case contact
		case copyright; case _copyright
		case copyrightLabel; case _copyrightLabel
		case date; case _date
		case description_fhir = "description"; case _description_fhir = "_description"
		case destination
		case experimental; case _experimental
		case fixture
		case identifier
		case jurisdiction
		case metadata
		case name; case _name
		case origin
		case profile; case _profile
		case publisher; case _publisher
		case purpose; case _purpose
		case scope
		case setup
		case status; case _status
		case teardown
		case test
		case title; case _title
		case url; case _url
		case useContext
		case variable
		case version; case _version
		case versionAlgorithmCoding
		case versionAlgorithmString; case _versionAlgorithmString
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.common = try [TestScriptCommon](from: _container, forKeyIfPresent: .common)
		self.contact = try [ContactDetail](from: _container, forKeyIfPresent: .contact)
		self.copyright = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyright, auxiliaryKey: ._copyright)
		self.copyrightLabel = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		self.date = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .date, auxiliaryKey: ._date)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.destination = try [TestScriptDestination](from: _container, forKeyIfPresent: .destination)
		self.experimental = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .experimental, auxiliaryKey: ._experimental)
		self.fixture = try [TestScriptFixture](from: _container, forKeyIfPresent: .fixture)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.jurisdiction = try [CodeableConcept](from: _container, forKeyIfPresent: .jurisdiction)
		self.metadata = try TestScriptMetadata(from: _container, forKeyIfPresent: .metadata)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.origin = try [TestScriptOrigin](from: _container, forKeyIfPresent: .origin)
		self.profile = try [FHIRPrimitive<Canonical>](from: _container, forKeyIfPresent: .profile, auxiliaryKey: ._profile)
		self.publisher = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .publisher, auxiliaryKey: ._publisher)
		self.purpose = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .purpose, auxiliaryKey: ._purpose)
		self.scope = try [TestScriptScope](from: _container, forKeyIfPresent: .scope)
		self.setup = try TestScriptSetup(from: _container, forKeyIfPresent: .setup)
		self.status = try FHIRPrimitive<PublicationStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		self.teardown = try TestScriptTeardown(from: _container, forKeyIfPresent: .teardown)
		self.test = try [TestScriptTest](from: _container, forKeyIfPresent: .test)
		self.title = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .title, auxiliaryKey: ._title)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		self.useContext = try [UsageContext](from: _container, forKeyIfPresent: .useContext)
		self.variable = try [TestScriptVariable](from: _container, forKeyIfPresent: .variable)
		self.version = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .version, auxiliaryKey: ._version)
		var _t_versionAlgorithm: VersionAlgorithmX? = nil
		if let versionAlgorithmString = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmString, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .string(versionAlgorithmString)
		}
		if let versionAlgorithmCoding = try Coding(from: _container, forKeyIfPresent: .versionAlgorithmCoding) {
			if _t_versionAlgorithm != nil {
				throw DecodingError.dataCorruptedError(forKey: .versionAlgorithmCoding, in: _container, debugDescription: "More than one value provided for \"versionAlgorithm\"")
			}
			_t_versionAlgorithm = .coding(versionAlgorithmCoding)
		}
		self.versionAlgorithm = _t_versionAlgorithm
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try common?.encode(on: &_container, forKey: .common)
		try contact?.encode(on: &_container, forKey: .contact)
		try copyright?.encode(on: &_container, forKey: .copyright, auxiliaryKey: ._copyright)
		try copyrightLabel?.encode(on: &_container, forKey: .copyrightLabel, auxiliaryKey: ._copyrightLabel)
		try date?.encode(on: &_container, forKey: .date, auxiliaryKey: ._date)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try destination?.encode(on: &_container, forKey: .destination)
		try experimental?.encode(on: &_container, forKey: .experimental, auxiliaryKey: ._experimental)
		try fixture?.encode(on: &_container, forKey: .fixture)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try jurisdiction?.encode(on: &_container, forKey: .jurisdiction)
		try metadata?.encode(on: &_container, forKey: .metadata)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try origin?.encode(on: &_container, forKey: .origin)
		try profile?.encode(on: &_container, forKey: .profile, auxiliaryKey: ._profile)
		try publisher?.encode(on: &_container, forKey: .publisher, auxiliaryKey: ._publisher)
		try purpose?.encode(on: &_container, forKey: .purpose, auxiliaryKey: ._purpose)
		try scope?.encode(on: &_container, forKey: .scope)
		try setup?.encode(on: &_container, forKey: .setup)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try teardown?.encode(on: &_container, forKey: .teardown)
		try test?.encode(on: &_container, forKey: .test)
		try title?.encode(on: &_container, forKey: .title, auxiliaryKey: ._title)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try useContext?.encode(on: &_container, forKey: .useContext)
		try variable?.encode(on: &_container, forKey: .variable)
		try version?.encode(on: &_container, forKey: .version, auxiliaryKey: ._version)
		if let _enum = versionAlgorithm {
			switch _enum {
			case .string(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmString, auxiliaryKey: ._versionAlgorithmString)
			case .coding(let _value):
				try _value.encode(on: &_container, forKey: .versionAlgorithmCoding)
			}
		}
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScript else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return common == _other.common
		    && contact == _other.contact
		    && copyright == _other.copyright
		    && copyrightLabel == _other.copyrightLabel
		    && date == _other.date
		    && description_fhir == _other.description_fhir
		    && destination == _other.destination
		    && experimental == _other.experimental
		    && fixture == _other.fixture
		    && identifier == _other.identifier
		    && jurisdiction == _other.jurisdiction
		    && metadata == _other.metadata
		    && name == _other.name
		    && origin == _other.origin
		    && profile == _other.profile
		    && publisher == _other.publisher
		    && purpose == _other.purpose
		    && scope == _other.scope
		    && setup == _other.setup
		    && status == _other.status
		    && teardown == _other.teardown
		    && test == _other.test
		    && title == _other.title
		    && url == _other.url
		    && useContext == _other.useContext
		    && variable == _other.variable
		    && version == _other.version
		    && versionAlgorithm == _other.versionAlgorithm
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(common)
		hasher.combine(contact)
		hasher.combine(copyright)
		hasher.combine(copyrightLabel)
		hasher.combine(date)
		hasher.combine(description_fhir)
		hasher.combine(destination)
		hasher.combine(experimental)
		hasher.combine(fixture)
		hasher.combine(identifier)
		hasher.combine(jurisdiction)
		hasher.combine(metadata)
		hasher.combine(name)
		hasher.combine(origin)
		hasher.combine(profile)
		hasher.combine(publisher)
		hasher.combine(purpose)
		hasher.combine(scope)
		hasher.combine(setup)
		hasher.combine(status)
		hasher.combine(teardown)
		hasher.combine(test)
		hasher.combine(title)
		hasher.combine(url)
		hasher.combine(useContext)
		hasher.combine(variable)
		hasher.combine(version)
		hasher.combine(versionAlgorithm)
	}
}

/**
 A common collection of actions in this script.
 
 A common collection of actions that can be re-used in a TestScript.
 */
open class TestScriptCommon: BackboneElement {
	
	/// Key that identifies this common collection of actions
	public var key: FHIRPrimitive<FHIRString>
	
	/// Tracking/logging name of this common collection of actions
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Tracking/reporting short description of this common collection of actions
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Parameter(s) to convey input values to this common collection of actions in this script
	public var parameter: [TestScriptCommonParameter]?
	
	/// A common operation or assert that can be re-used in this script
	public var action: [TestScriptCommonAction]
	
	/// Designated initializer taking all required properties
	public init(action: [TestScriptCommonAction], key: FHIRPrimitive<FHIRString>) {
		self.action = action
		self.key = key
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		action: [TestScriptCommonAction],
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		key: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil,
		parameter: [TestScriptCommonParameter]? = nil
	) {
		self.init(action: action, key: key)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
		self.parameter = parameter
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case description_fhir = "description"; case _description_fhir = "_description"
		case key; case _key
		case name; case _name
		case parameter
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [TestScriptCommonAction](from: _container, forKey: .action)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.key = try FHIRPrimitive<FHIRString>(from: _container, forKey: .key, auxiliaryKey: ._key)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		self.parameter = try [TestScriptCommonParameter](from: _container, forKeyIfPresent: .parameter)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action.encode(on: &_container, forKey: .action)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try key.encode(on: &_container, forKey: .key, auxiliaryKey: ._key)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptCommon else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && description_fhir == _other.description_fhir
		    && key == _other.key
		    && name == _other.name
		    && parameter == _other.parameter
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(description_fhir)
		hasher.combine(key)
		hasher.combine(name)
		hasher.combine(parameter)
	}
}

/**
 A common operation or assert that can be re-used in this script.
 
 An action will contain either an operation or an assertion but not both.
 */
open class TestScriptCommonAction: BackboneElement {
	
	/// The common operation that can be re-used in this script
	public var operation: TestScriptSetupActionOperation?
	
	/// The common assertion to perform
	public var assert: TestScriptSetupActionAssert?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		assert: TestScriptSetupActionAssert? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		operation: TestScriptSetupActionOperation? = nil
	) {
		self.init()
		self.assert = assert
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.operation = operation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assert
		case operation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assert = try TestScriptSetupActionAssert(from: _container, forKeyIfPresent: .assert)
		self.operation = try TestScriptSetupActionOperation(from: _container, forKeyIfPresent: .operation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assert?.encode(on: &_container, forKey: .assert)
		try operation?.encode(on: &_container, forKey: .operation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptCommonAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return assert == _other.assert
		    && operation == _other.operation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assert)
		hasher.combine(operation)
	}
}

/**
 Parameter(s) to convey input values to this common collection of actions in this script.
 
 Optional named parameter(s) to provide input values to this common collection of actions from this or an external
 TestScript.
 */
open class TestScriptCommonParameter: BackboneElement {
	
	/// Tracking/logging name of this parameter to be used in this common collection of actions
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Tracking/reporting short description of this parameter to be used this common collection of actions
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case name; case _name
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptCommonParameter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && name == _other.name
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(name)
	}
}

/**
 An abstract server representing a destination or receiver in a message exchange.
 
 An abstract server used in operations within this test script in the destination element.
 */
open class TestScriptDestination: BackboneElement {
	
	/// The index of the abstract destination server starting at 1
	public var index: FHIRPrimitive<FHIRInteger>
	
	/// FHIR-Server | FHIR-SDC-FormManager | FHIR-SDC-FormReceiver | FHIR-SDC-FormProcessor
	public var profile: Coding
	
	/// The url path of the destination server
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	public init(index: FHIRPrimitive<FHIRInteger>, profile: Coding) {
		self.index = index
		self.profile = profile
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		index: FHIRPrimitive<FHIRInteger>,
		modifierExtension: [Extension]? = nil,
		profile: Coding,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.init(index: index, profile: profile)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case index; case _index
		case profile
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.index = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .index, auxiliaryKey: ._index)
		self.profile = try Coding(from: _container, forKey: .profile)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try index.encode(on: &_container, forKey: .index, auxiliaryKey: ._index)
		try profile.encode(on: &_container, forKey: .profile)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptDestination else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return index == _other.index
		    && profile == _other.profile
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(index)
		hasher.combine(profile)
		hasher.combine(url)
	}
}

/**
 Fixture in the test script - by reference (uri).
 
 Fixture in the test script - by reference (uri). All fixtures are required for the test script to execute.
 */
open class TestScriptFixture: BackboneElement {
	
	/// Whether or not to implicitly create the fixture during setup
	public var autocreate: FHIRPrimitive<FHIRBool>
	
	/// Whether or not to implicitly delete the fixture during teardown
	public var autodelete: FHIRPrimitive<FHIRBool>
	
	/// Reference of the resource
	public var resource: Reference?
	
	/// Designated initializer taking all required properties
	public init(autocreate: FHIRPrimitive<FHIRBool>, autodelete: FHIRPrimitive<FHIRBool>) {
		self.autocreate = autocreate
		self.autodelete = autodelete
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		autocreate: FHIRPrimitive<FHIRBool>,
		autodelete: FHIRPrimitive<FHIRBool>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		resource: Reference? = nil
	) {
		self.init(autocreate: autocreate, autodelete: autodelete)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.resource = resource
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case autocreate; case _autocreate
		case autodelete; case _autodelete
		case resource
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.autocreate = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .autocreate, auxiliaryKey: ._autocreate)
		self.autodelete = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .autodelete, auxiliaryKey: ._autodelete)
		self.resource = try Reference(from: _container, forKeyIfPresent: .resource)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try autocreate.encode(on: &_container, forKey: .autocreate, auxiliaryKey: ._autocreate)
		try autodelete.encode(on: &_container, forKey: .autodelete, auxiliaryKey: ._autodelete)
		try resource?.encode(on: &_container, forKey: .resource)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptFixture else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return autocreate == _other.autocreate
		    && autodelete == _other.autodelete
		    && resource == _other.resource
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(autocreate)
		hasher.combine(autodelete)
		hasher.combine(resource)
	}
}

/**
 Required capability that is assumed to function correctly on the FHIR server being tested.
 
 The required capability must exist and are assumed to function correctly on the FHIR server being tested.
 */
open class TestScriptMetadata: BackboneElement {
	
	/// Links to the FHIR specification
	public var link: [TestScriptMetadataLink]?
	
	/// Capabilities  that are assumed to function correctly on the FHIR server being tested
	public var capability: [TestScriptMetadataCapability]
	
	/// Designated initializer taking all required properties
	public init(capability: [TestScriptMetadataCapability]) {
		self.capability = capability
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		capability: [TestScriptMetadataCapability],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		link: [TestScriptMetadataLink]? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(capability: capability)
		self.`extension` = `extension`
		self.id = id
		self.link = link
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case capability
		case link
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.capability = try [TestScriptMetadataCapability](from: _container, forKey: .capability)
		self.link = try [TestScriptMetadataLink](from: _container, forKeyIfPresent: .link)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try capability.encode(on: &_container, forKey: .capability)
		try link?.encode(on: &_container, forKey: .link)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptMetadata else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return capability == _other.capability
		    && link == _other.link
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(capability)
		hasher.combine(link)
	}
}

/**
 Capabilities  that are assumed to function correctly on the FHIR server being tested.
 
 Capabilities that must exist and are assumed to function correctly on the FHIR server being tested.
 */
open class TestScriptMetadataCapability: BackboneElement {
	
	/// Are the capabilities required?
	public var required: FHIRPrimitive<FHIRBool>
	
	/// Are the capabilities validated?
	public var validated: FHIRPrimitive<FHIRBool>
	
	/// The expected capabilities of the server
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Which origin server these requirements apply to
	public var origin: [FHIRPrimitive<FHIRInteger>]?
	
	/// Which server these requirements apply to
	public var destination: FHIRPrimitive<FHIRInteger>?
	
	/// Links to the FHIR specification
	public var link: [FHIRPrimitive<FHIRURI>]?
	
	/// Required Capability Statement
	public var capabilities: FHIRPrimitive<Canonical>
	
	/// Designated initializer taking all required properties
	public init(capabilities: FHIRPrimitive<Canonical>, required: FHIRPrimitive<FHIRBool>, validated: FHIRPrimitive<FHIRBool>) {
		self.capabilities = capabilities
		self.required = required
		self.validated = validated
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		capabilities: FHIRPrimitive<Canonical>,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		destination: FHIRPrimitive<FHIRInteger>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		link: [FHIRPrimitive<FHIRURI>]? = nil,
		modifierExtension: [Extension]? = nil,
		origin: [FHIRPrimitive<FHIRInteger>]? = nil,
		required: FHIRPrimitive<FHIRBool>,
		validated: FHIRPrimitive<FHIRBool>
	) {
		self.init(capabilities: capabilities, required: required, validated: validated)
		self.description_fhir = description_fhir
		self.destination = destination
		self.`extension` = `extension`
		self.id = id
		self.link = link
		self.modifierExtension = modifierExtension
		self.origin = origin
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case capabilities; case _capabilities
		case description_fhir = "description"; case _description_fhir = "_description"
		case destination; case _destination
		case link; case _link
		case origin; case _origin
		case required; case _required
		case validated; case _validated
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.capabilities = try FHIRPrimitive<Canonical>(from: _container, forKey: .capabilities, auxiliaryKey: ._capabilities)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.destination = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .destination, auxiliaryKey: ._destination)
		self.link = try [FHIRPrimitive<FHIRURI>](from: _container, forKeyIfPresent: .link, auxiliaryKey: ._link)
		self.origin = try [FHIRPrimitive<FHIRInteger>](from: _container, forKeyIfPresent: .origin, auxiliaryKey: ._origin)
		self.required = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .required, auxiliaryKey: ._required)
		self.validated = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .validated, auxiliaryKey: ._validated)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try capabilities.encode(on: &_container, forKey: .capabilities, auxiliaryKey: ._capabilities)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try destination?.encode(on: &_container, forKey: .destination, auxiliaryKey: ._destination)
		try link?.encode(on: &_container, forKey: .link, auxiliaryKey: ._link)
		try origin?.encode(on: &_container, forKey: .origin, auxiliaryKey: ._origin)
		try required.encode(on: &_container, forKey: .required, auxiliaryKey: ._required)
		try validated.encode(on: &_container, forKey: .validated, auxiliaryKey: ._validated)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptMetadataCapability else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return capabilities == _other.capabilities
		    && description_fhir == _other.description_fhir
		    && destination == _other.destination
		    && link == _other.link
		    && origin == _other.origin
		    && required == _other.required
		    && validated == _other.validated
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(capabilities)
		hasher.combine(description_fhir)
		hasher.combine(destination)
		hasher.combine(link)
		hasher.combine(origin)
		hasher.combine(required)
		hasher.combine(validated)
	}
}

/**
 Links to the FHIR specification.
 
 A link to the FHIR specification that this test is covering.
 */
open class TestScriptMetadataLink: BackboneElement {
	
	/// URL to the specification
	public var url: FHIRPrimitive<FHIRURI>
	
	/// Short description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(url: FHIRPrimitive<FHIRURI>) {
		self.url = url
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		url: FHIRPrimitive<FHIRURI>
	) {
		self.init(url: url)
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case description_fhir = "description"; case _description_fhir = "_description"
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKey: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try url.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptMetadataLink else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return description_fhir == _other.description_fhir
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(description_fhir)
		hasher.combine(url)
	}
}

/**
 An abstract server representing a client or sender in a message exchange.
 
 An abstract server used in operations within this test script in the origin element.
 */
open class TestScriptOrigin: BackboneElement {
	
	/// The index of the abstract origin server starting at 1
	public var index: FHIRPrimitive<FHIRInteger>
	
	/// FHIR-Client | FHIR-SDC-FormFiller
	public var profile: Coding
	
	/// The url path of the origin server
	public var url: FHIRPrimitive<FHIRURI>?
	
	/// Designated initializer taking all required properties
	public init(index: FHIRPrimitive<FHIRInteger>, profile: Coding) {
		self.index = index
		self.profile = profile
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		index: FHIRPrimitive<FHIRInteger>,
		modifierExtension: [Extension]? = nil,
		profile: Coding,
		url: FHIRPrimitive<FHIRURI>? = nil
	) {
		self.init(index: index, profile: profile)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case index; case _index
		case profile
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.index = try FHIRPrimitive<FHIRInteger>(from: _container, forKey: .index, auxiliaryKey: ._index)
		self.profile = try Coding(from: _container, forKey: .profile)
		self.url = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try index.encode(on: &_container, forKey: .index, auxiliaryKey: ._index)
		try profile.encode(on: &_container, forKey: .profile)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptOrigin else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return index == _other.index
		    && profile == _other.profile
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(index)
		hasher.combine(profile)
		hasher.combine(url)
	}
}

/**
 Indication of the artifact(s) that are tested by this test case.
 
 The scope indicates a conformance artifact that is tested by the test(s) within this test case and the expectation of
 the test outcome(s) as well as the intended test phase inclusion.
 */
open class TestScriptScope: BackboneElement {
	
	/// The specific conformance artifact being tested
	public var artifact: FHIRPrimitive<Canonical>
	
	/// required | optional | strict
	public var conformance: CodeableConcept?
	
	/// unit | integration | production
	public var phase: CodeableConcept?
	
	/// Designated initializer taking all required properties
	public init(artifact: FHIRPrimitive<Canonical>) {
		self.artifact = artifact
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		artifact: FHIRPrimitive<Canonical>,
		conformance: CodeableConcept? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		phase: CodeableConcept? = nil
	) {
		self.init(artifact: artifact)
		self.conformance = conformance
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.phase = phase
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case artifact; case _artifact
		case conformance
		case phase
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.artifact = try FHIRPrimitive<Canonical>(from: _container, forKey: .artifact, auxiliaryKey: ._artifact)
		self.conformance = try CodeableConcept(from: _container, forKeyIfPresent: .conformance)
		self.phase = try CodeableConcept(from: _container, forKeyIfPresent: .phase)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try artifact.encode(on: &_container, forKey: .artifact, auxiliaryKey: ._artifact)
		try conformance?.encode(on: &_container, forKey: .conformance)
		try phase?.encode(on: &_container, forKey: .phase)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptScope else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return artifact == _other.artifact
		    && conformance == _other.conformance
		    && phase == _other.phase
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(artifact)
		hasher.combine(conformance)
		hasher.combine(phase)
	}
}

/**
 A series of required setup operations before tests are executed.
 */
open class TestScriptSetup: BackboneElement {
	
	/// A setup common or operation or assert to perform
	public var action: [TestScriptSetupAction]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		action: [TestScriptSetupAction]? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.action = action
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [TestScriptSetupAction](from: _container, forKeyIfPresent: .action)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetup else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
	}
}

/**
 A setup common or operation or assert to perform.
 
 Action would contain either a common or operation or an assertion.
 */
open class TestScriptSetupAction: BackboneElement {
	
	/// Links or references to common collection(s) of actions
	public var common: TestScriptSetupActionCommon?
	
	/// The setup operation to perform
	public var operation: TestScriptSetupActionOperation?
	
	/// The assertion to perform
	public var assert: TestScriptSetupActionAssert?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		assert: TestScriptSetupActionAssert? = nil,
		common: TestScriptSetupActionCommon? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		operation: TestScriptSetupActionOperation? = nil
	) {
		self.init()
		self.assert = assert
		self.common = common
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.operation = operation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assert
		case common
		case operation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assert = try TestScriptSetupActionAssert(from: _container, forKeyIfPresent: .assert)
		self.common = try TestScriptSetupActionCommon(from: _container, forKeyIfPresent: .common)
		self.operation = try TestScriptSetupActionOperation(from: _container, forKeyIfPresent: .operation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assert?.encode(on: &_container, forKey: .assert)
		try common?.encode(on: &_container, forKey: .common)
		try operation?.encode(on: &_container, forKey: .operation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetupAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return assert == _other.assert
		    && common == _other.common
		    && operation == _other.operation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assert)
		hasher.combine(common)
		hasher.combine(operation)
	}
}

/**
 The assertion to perform.
 
 Evaluates the results of previous operations to determine if the server under test behaves appropriately.
 */
open class TestScriptSetupActionAssert: BackboneElement {
	
	/// Tracking/logging assertion label
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Tracking/reporting assertion description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The direction to use for the assertion.
	public var direction: FHIRPrimitive<AssertionDirectionType>?
	
	/// Id of the source fixture to be evaluated
	public var compareToSourceId: FHIRPrimitive<FHIRString>?
	
	/// The FHIRPath expression to evaluate against the source fixture
	public var compareToSourceExpression: FHIRPrimitive<FHIRString>?
	
	/// XPath or JSONPath expression to evaluate against the source fixture
	public var compareToSourcePath: FHIRPrimitive<FHIRString>?
	
	/// Mime type to compare against the 'Content-Type' header
	public var contentType: FHIRPrimitive<FHIRString>?
	
	/// The default manual completion outcome applied to this assertion.
	public var defaultManualCompletion: FHIRPrimitive<AssertionManualCompletionType>?
	
	/// The FHIRPath expression to be evaluated
	public var expression: FHIRPrimitive<FHIRString>?
	
	/// HTTP header field name
	public var headerField: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of minimum content resource
	public var minimumId: FHIRPrimitive<FHIRString>?
	
	/// Perform validation on navigation links?
	public var navigationLinks: FHIRPrimitive<FHIRBool>?
	
	/// The operator type defines the conditional behavior of the assert.
	public var `operator`: FHIRPrimitive<AssertionOperatorType>?
	
	/// XPath or JSONPath expression
	public var path: FHIRPrimitive<FHIRString>?
	
	/// The request method or HTTP operation code to compare against that used by the client system under test.
	public var requestMethod: FHIRPrimitive<TestScriptRequestMethodCode>?
	
	/// Request URL comparison value
	public var requestURL: FHIRPrimitive<FHIRString>?
	
	/// Resource type
	public var resource: FHIRPrimitive<FHIRURI>?
	
	/// None
	public var response: FHIRPrimitive<AssertionResponseTypes>?
	
	/// HTTP response code to test
	public var responseCode: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of source expression or headerField
	public var sourceId: FHIRPrimitive<FHIRString>?
	
	/// If this assert fails, will the current test execution stop?
	public var stopTestOnFail: FHIRPrimitive<FHIRBool>
	
	/// Profile Id of validation profile reference
	public var validateProfileId: FHIRPrimitive<FHIRString>?
	
	/// The value to compare to
	public var value: FHIRPrimitive<FHIRString>?
	
	/// Will this assert produce a warning only on error?
	public var warningOnly: FHIRPrimitive<FHIRBool>
	
	/// Links or references to the testing requirements
	public var requirement: [TestScriptSetupActionAssertRequirement]?
	
	/// Designated initializer taking all required properties
	public init(stopTestOnFail: FHIRPrimitive<FHIRBool>, warningOnly: FHIRPrimitive<FHIRBool>) {
		self.stopTestOnFail = stopTestOnFail
		self.warningOnly = warningOnly
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		compareToSourceExpression: FHIRPrimitive<FHIRString>? = nil,
		compareToSourceId: FHIRPrimitive<FHIRString>? = nil,
		compareToSourcePath: FHIRPrimitive<FHIRString>? = nil,
		contentType: FHIRPrimitive<FHIRString>? = nil,
		defaultManualCompletion: FHIRPrimitive<AssertionManualCompletionType>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		direction: FHIRPrimitive<AssertionDirectionType>? = nil,
		expression: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		headerField: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		label: FHIRPrimitive<FHIRString>? = nil,
		minimumId: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		navigationLinks: FHIRPrimitive<FHIRBool>? = nil,
		`operator`: FHIRPrimitive<AssertionOperatorType>? = nil,
		path: FHIRPrimitive<FHIRString>? = nil,
		requestMethod: FHIRPrimitive<TestScriptRequestMethodCode>? = nil,
		requestURL: FHIRPrimitive<FHIRString>? = nil,
		requirement: [TestScriptSetupActionAssertRequirement]? = nil,
		resource: FHIRPrimitive<FHIRURI>? = nil,
		response: FHIRPrimitive<AssertionResponseTypes>? = nil,
		responseCode: FHIRPrimitive<FHIRString>? = nil,
		sourceId: FHIRPrimitive<FHIRString>? = nil,
		stopTestOnFail: FHIRPrimitive<FHIRBool>,
		validateProfileId: FHIRPrimitive<FHIRString>? = nil,
		value: FHIRPrimitive<FHIRString>? = nil,
		warningOnly: FHIRPrimitive<FHIRBool>
	) {
		self.init(stopTestOnFail: stopTestOnFail, warningOnly: warningOnly)
		self.compareToSourceExpression = compareToSourceExpression
		self.compareToSourceId = compareToSourceId
		self.compareToSourcePath = compareToSourcePath
		self.contentType = contentType
		self.defaultManualCompletion = defaultManualCompletion
		self.description_fhir = description_fhir
		self.direction = direction
		self.expression = expression
		self.`extension` = `extension`
		self.headerField = headerField
		self.id = id
		self.label = label
		self.minimumId = minimumId
		self.modifierExtension = modifierExtension
		self.navigationLinks = navigationLinks
		self.`operator` = `operator`
		self.path = path
		self.requestMethod = requestMethod
		self.requestURL = requestURL
		self.requirement = requirement
		self.resource = resource
		self.response = response
		self.responseCode = responseCode
		self.sourceId = sourceId
		self.validateProfileId = validateProfileId
		self.value = value
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case compareToSourceExpression; case _compareToSourceExpression
		case compareToSourceId; case _compareToSourceId
		case compareToSourcePath; case _compareToSourcePath
		case contentType; case _contentType
		case defaultManualCompletion; case _defaultManualCompletion
		case description_fhir = "description"; case _description_fhir = "_description"
		case direction; case _direction
		case expression; case _expression
		case headerField; case _headerField
		case label; case _label
		case minimumId; case _minimumId
		case navigationLinks; case _navigationLinks
		case `operator` = "operator"; case _operator = "_operator"
		case path; case _path
		case requestMethod; case _requestMethod
		case requestURL; case _requestURL
		case requirement
		case resource; case _resource
		case response; case _response
		case responseCode; case _responseCode
		case sourceId; case _sourceId
		case stopTestOnFail; case _stopTestOnFail
		case validateProfileId; case _validateProfileId
		case value; case _value
		case warningOnly; case _warningOnly
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.compareToSourceExpression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .compareToSourceExpression, auxiliaryKey: ._compareToSourceExpression)
		self.compareToSourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .compareToSourceId, auxiliaryKey: ._compareToSourceId)
		self.compareToSourcePath = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .compareToSourcePath, auxiliaryKey: ._compareToSourcePath)
		self.contentType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.defaultManualCompletion = try FHIRPrimitive<AssertionManualCompletionType>(from: _container, forKeyIfPresent: .defaultManualCompletion, auxiliaryKey: ._defaultManualCompletion)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.direction = try FHIRPrimitive<AssertionDirectionType>(from: _container, forKeyIfPresent: .direction, auxiliaryKey: ._direction)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.headerField = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .headerField, auxiliaryKey: ._headerField)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.minimumId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .minimumId, auxiliaryKey: ._minimumId)
		self.navigationLinks = try FHIRPrimitive<FHIRBool>(from: _container, forKeyIfPresent: .navigationLinks, auxiliaryKey: ._navigationLinks)
		self.`operator` = try FHIRPrimitive<AssertionOperatorType>(from: _container, forKeyIfPresent: .`operator`, auxiliaryKey: ._operator)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.requestMethod = try FHIRPrimitive<TestScriptRequestMethodCode>(from: _container, forKeyIfPresent: .requestMethod, auxiliaryKey: ._requestMethod)
		self.requestURL = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requestURL, auxiliaryKey: ._requestURL)
		self.requirement = try [TestScriptSetupActionAssertRequirement](from: _container, forKeyIfPresent: .requirement)
		self.resource = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		self.response = try FHIRPrimitive<AssertionResponseTypes>(from: _container, forKeyIfPresent: .response, auxiliaryKey: ._response)
		self.responseCode = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .responseCode, auxiliaryKey: ._responseCode)
		self.sourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceId, auxiliaryKey: ._sourceId)
		self.stopTestOnFail = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .stopTestOnFail, auxiliaryKey: ._stopTestOnFail)
		self.validateProfileId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .validateProfileId, auxiliaryKey: ._validateProfileId)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .value, auxiliaryKey: ._value)
		self.warningOnly = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .warningOnly, auxiliaryKey: ._warningOnly)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try compareToSourceExpression?.encode(on: &_container, forKey: .compareToSourceExpression, auxiliaryKey: ._compareToSourceExpression)
		try compareToSourceId?.encode(on: &_container, forKey: .compareToSourceId, auxiliaryKey: ._compareToSourceId)
		try compareToSourcePath?.encode(on: &_container, forKey: .compareToSourcePath, auxiliaryKey: ._compareToSourcePath)
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try defaultManualCompletion?.encode(on: &_container, forKey: .defaultManualCompletion, auxiliaryKey: ._defaultManualCompletion)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try direction?.encode(on: &_container, forKey: .direction, auxiliaryKey: ._direction)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try headerField?.encode(on: &_container, forKey: .headerField, auxiliaryKey: ._headerField)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try minimumId?.encode(on: &_container, forKey: .minimumId, auxiliaryKey: ._minimumId)
		try navigationLinks?.encode(on: &_container, forKey: .navigationLinks, auxiliaryKey: ._navigationLinks)
		try `operator`?.encode(on: &_container, forKey: .`operator`, auxiliaryKey: ._operator)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try requestMethod?.encode(on: &_container, forKey: .requestMethod, auxiliaryKey: ._requestMethod)
		try requestURL?.encode(on: &_container, forKey: .requestURL, auxiliaryKey: ._requestURL)
		try requirement?.encode(on: &_container, forKey: .requirement)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try response?.encode(on: &_container, forKey: .response, auxiliaryKey: ._response)
		try responseCode?.encode(on: &_container, forKey: .responseCode, auxiliaryKey: ._responseCode)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
		try stopTestOnFail.encode(on: &_container, forKey: .stopTestOnFail, auxiliaryKey: ._stopTestOnFail)
		try validateProfileId?.encode(on: &_container, forKey: .validateProfileId, auxiliaryKey: ._validateProfileId)
		try value?.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try warningOnly.encode(on: &_container, forKey: .warningOnly, auxiliaryKey: ._warningOnly)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetupActionAssert else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return compareToSourceExpression == _other.compareToSourceExpression
		    && compareToSourceId == _other.compareToSourceId
		    && compareToSourcePath == _other.compareToSourcePath
		    && contentType == _other.contentType
		    && defaultManualCompletion == _other.defaultManualCompletion
		    && description_fhir == _other.description_fhir
		    && direction == _other.direction
		    && expression == _other.expression
		    && headerField == _other.headerField
		    && label == _other.label
		    && minimumId == _other.minimumId
		    && navigationLinks == _other.navigationLinks
		    && `operator` == _other.`operator`
		    && path == _other.path
		    && requestMethod == _other.requestMethod
		    && requestURL == _other.requestURL
		    && requirement == _other.requirement
		    && resource == _other.resource
		    && response == _other.response
		    && responseCode == _other.responseCode
		    && sourceId == _other.sourceId
		    && stopTestOnFail == _other.stopTestOnFail
		    && validateProfileId == _other.validateProfileId
		    && value == _other.value
		    && warningOnly == _other.warningOnly
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(compareToSourceExpression)
		hasher.combine(compareToSourceId)
		hasher.combine(compareToSourcePath)
		hasher.combine(contentType)
		hasher.combine(defaultManualCompletion)
		hasher.combine(description_fhir)
		hasher.combine(direction)
		hasher.combine(expression)
		hasher.combine(headerField)
		hasher.combine(label)
		hasher.combine(minimumId)
		hasher.combine(navigationLinks)
		hasher.combine(`operator`)
		hasher.combine(path)
		hasher.combine(requestMethod)
		hasher.combine(requestURL)
		hasher.combine(requirement)
		hasher.combine(resource)
		hasher.combine(response)
		hasher.combine(responseCode)
		hasher.combine(sourceId)
		hasher.combine(stopTestOnFail)
		hasher.combine(validateProfileId)
		hasher.combine(value)
		hasher.combine(warningOnly)
	}
}

/**
 Links or references to the testing requirements.
 
 Links or references providing traceability to the testing requirements for this assert.
 */
open class TestScriptSetupActionAssertRequirement: BackboneElement {
	
	/// Canonical reference to the Requirements instance
	public var reference: FHIRPrimitive<Canonical>
	
	/// Requirements statement key identifier
	public var key: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(key: FHIRPrimitive<FHIRString>, reference: FHIRPrimitive<Canonical>) {
		self.key = key
		self.reference = reference
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		key: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		reference: FHIRPrimitive<Canonical>
	) {
		self.init(key: key, reference: reference)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case key; case _key
		case reference; case _reference
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.key = try FHIRPrimitive<FHIRString>(from: _container, forKey: .key, auxiliaryKey: ._key)
		self.reference = try FHIRPrimitive<Canonical>(from: _container, forKey: .reference, auxiliaryKey: ._reference)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try key.encode(on: &_container, forKey: .key, auxiliaryKey: ._key)
		try reference.encode(on: &_container, forKey: .reference, auxiliaryKey: ._reference)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetupActionAssertRequirement else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return key == _other.key
		    && reference == _other.reference
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(key)
		hasher.combine(reference)
	}
}

/**
 Links or references to common collection(s) of actions.
 
 Links or references to common collection(s) of actions in this or an external TestScript instance.
 */
open class TestScriptSetupActionCommon: BackboneElement {
	
	/// Canonical reference to the common TestScript instance
	public var testScript: FHIRPrimitive<Canonical>?
	
	/// Common key reference that identifies the common collection of actions to perform
	public var keyRef: FHIRPrimitive<FHIRString>
	
	/// Parameter(s) to convey input values to the identified common collection of actions
	public var parameter: [TestScriptSetupActionCommonParameter]?
	
	/// Designated initializer taking all required properties
	public init(keyRef: FHIRPrimitive<FHIRString>) {
		self.keyRef = keyRef
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		keyRef: FHIRPrimitive<FHIRString>,
		modifierExtension: [Extension]? = nil,
		parameter: [TestScriptSetupActionCommonParameter]? = nil,
		testScript: FHIRPrimitive<Canonical>? = nil
	) {
		self.init(keyRef: keyRef)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.parameter = parameter
		self.testScript = testScript
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case keyRef; case _keyRef
		case parameter
		case testScript; case _testScript
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.keyRef = try FHIRPrimitive<FHIRString>(from: _container, forKey: .keyRef, auxiliaryKey: ._keyRef)
		self.parameter = try [TestScriptSetupActionCommonParameter](from: _container, forKeyIfPresent: .parameter)
		self.testScript = try FHIRPrimitive<Canonical>(from: _container, forKeyIfPresent: .testScript, auxiliaryKey: ._testScript)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try keyRef.encode(on: &_container, forKey: .keyRef, auxiliaryKey: ._keyRef)
		try parameter?.encode(on: &_container, forKey: .parameter)
		try testScript?.encode(on: &_container, forKey: .testScript, auxiliaryKey: ._testScript)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetupActionCommon else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return keyRef == _other.keyRef
		    && parameter == _other.parameter
		    && testScript == _other.testScript
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(keyRef)
		hasher.combine(parameter)
		hasher.combine(testScript)
	}
}

/**
 Parameter(s) to convey input values to the identified common collection of actions.
 
 Optional named parameter(s) to provide input values to the identified common collection of actions from this or an
 external TestScript.
 */
open class TestScriptSetupActionCommonParameter: BackboneElement {
	
	/// Name of the parameter from the identified common collection of actions
	public var name: FHIRPrimitive<FHIRString>
	
	/// Value to assign to the parameter from the identified common collection of actions
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>, value: FHIRPrimitive<FHIRString>) {
		self.name = name
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(name: name, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case name; case _name
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetupActionCommonParameter else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return name == _other.name
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(name)
		hasher.combine(value)
	}
}

/**
 The setup operation to perform.
 
 The operation to perform.
 */
open class TestScriptSetupActionOperation: BackboneElement {
	
	/// The operation code type that will be executed
	public var type: Coding?
	
	/// Resource type
	public var resource: FHIRPrimitive<FHIRURI>?
	
	/// Tracking/logging operation label
	public var label: FHIRPrimitive<FHIRString>?
	
	/// Tracking/reporting operation description
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// Mime type to accept in the payload of the response, with charset etc
	public var accept: FHIRPrimitive<FHIRString>?
	
	/// Mime type of the request payload contents, with charset etc
	public var contentType: FHIRPrimitive<FHIRString>?
	
	/// Server responding to the request
	public var destination: FHIRPrimitive<FHIRInteger>?
	
	/// Whether or not to send the request url in encoded format
	public var encodeRequestUrl: FHIRPrimitive<FHIRBool>
	
	/// The HTTP method the test engine MUST use for this operation regardless of any other operation details.
	public var method: FHIRPrimitive<TestScriptRequestMethodCode>?
	
	/// Server initiating the request
	public var origin: FHIRPrimitive<FHIRInteger>?
	
	/// Explicitly defined path parameters
	public var params: FHIRPrimitive<FHIRString>?
	
	/// Each operation can have one or more header elements
	public var requestHeader: [TestScriptSetupActionOperationRequestHeader]?
	
	/// Fixture Id of mapped request
	public var requestId: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of mapped response
	public var responseId: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of body for PUT and POST requests
	public var sourceId: FHIRPrimitive<FHIRString>?
	
	/// Id of fixture used for extracting the [id],  [type], and [vid] for GET requests
	public var targetId: FHIRPrimitive<FHIRString>?
	
	/// Request URL
	public var url: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(encodeRequestUrl: FHIRPrimitive<FHIRBool>) {
		self.encodeRequestUrl = encodeRequestUrl
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		accept: FHIRPrimitive<FHIRString>? = nil,
		contentType: FHIRPrimitive<FHIRString>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		destination: FHIRPrimitive<FHIRInteger>? = nil,
		encodeRequestUrl: FHIRPrimitive<FHIRBool>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		label: FHIRPrimitive<FHIRString>? = nil,
		method: FHIRPrimitive<TestScriptRequestMethodCode>? = nil,
		modifierExtension: [Extension]? = nil,
		origin: FHIRPrimitive<FHIRInteger>? = nil,
		params: FHIRPrimitive<FHIRString>? = nil,
		requestHeader: [TestScriptSetupActionOperationRequestHeader]? = nil,
		requestId: FHIRPrimitive<FHIRString>? = nil,
		resource: FHIRPrimitive<FHIRURI>? = nil,
		responseId: FHIRPrimitive<FHIRString>? = nil,
		sourceId: FHIRPrimitive<FHIRString>? = nil,
		targetId: FHIRPrimitive<FHIRString>? = nil,
		type: Coding? = nil,
		url: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(encodeRequestUrl: encodeRequestUrl)
		self.accept = accept
		self.contentType = contentType
		self.description_fhir = description_fhir
		self.destination = destination
		self.`extension` = `extension`
		self.id = id
		self.label = label
		self.method = method
		self.modifierExtension = modifierExtension
		self.origin = origin
		self.params = params
		self.requestHeader = requestHeader
		self.requestId = requestId
		self.resource = resource
		self.responseId = responseId
		self.sourceId = sourceId
		self.targetId = targetId
		self.type = type
		self.url = url
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case accept; case _accept
		case contentType; case _contentType
		case description_fhir = "description"; case _description_fhir = "_description"
		case destination; case _destination
		case encodeRequestUrl; case _encodeRequestUrl
		case label; case _label
		case method; case _method
		case origin; case _origin
		case params; case _params
		case requestHeader
		case requestId; case _requestId
		case resource; case _resource
		case responseId; case _responseId
		case sourceId; case _sourceId
		case targetId; case _targetId
		case type
		case url; case _url
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.accept = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .accept, auxiliaryKey: ._accept)
		self.contentType = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .contentType, auxiliaryKey: ._contentType)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.destination = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .destination, auxiliaryKey: ._destination)
		self.encodeRequestUrl = try FHIRPrimitive<FHIRBool>(from: _container, forKey: .encodeRequestUrl, auxiliaryKey: ._encodeRequestUrl)
		self.label = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .label, auxiliaryKey: ._label)
		self.method = try FHIRPrimitive<TestScriptRequestMethodCode>(from: _container, forKeyIfPresent: .method, auxiliaryKey: ._method)
		self.origin = try FHIRPrimitive<FHIRInteger>(from: _container, forKeyIfPresent: .origin, auxiliaryKey: ._origin)
		self.params = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .params, auxiliaryKey: ._params)
		self.requestHeader = try [TestScriptSetupActionOperationRequestHeader](from: _container, forKeyIfPresent: .requestHeader)
		self.requestId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .requestId, auxiliaryKey: ._requestId)
		self.resource = try FHIRPrimitive<FHIRURI>(from: _container, forKeyIfPresent: .resource, auxiliaryKey: ._resource)
		self.responseId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .responseId, auxiliaryKey: ._responseId)
		self.sourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceId, auxiliaryKey: ._sourceId)
		self.targetId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .targetId, auxiliaryKey: ._targetId)
		self.type = try Coding(from: _container, forKeyIfPresent: .type)
		self.url = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .url, auxiliaryKey: ._url)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try accept?.encode(on: &_container, forKey: .accept, auxiliaryKey: ._accept)
		try contentType?.encode(on: &_container, forKey: .contentType, auxiliaryKey: ._contentType)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try destination?.encode(on: &_container, forKey: .destination, auxiliaryKey: ._destination)
		try encodeRequestUrl.encode(on: &_container, forKey: .encodeRequestUrl, auxiliaryKey: ._encodeRequestUrl)
		try label?.encode(on: &_container, forKey: .label, auxiliaryKey: ._label)
		try method?.encode(on: &_container, forKey: .method, auxiliaryKey: ._method)
		try origin?.encode(on: &_container, forKey: .origin, auxiliaryKey: ._origin)
		try params?.encode(on: &_container, forKey: .params, auxiliaryKey: ._params)
		try requestHeader?.encode(on: &_container, forKey: .requestHeader)
		try requestId?.encode(on: &_container, forKey: .requestId, auxiliaryKey: ._requestId)
		try resource?.encode(on: &_container, forKey: .resource, auxiliaryKey: ._resource)
		try responseId?.encode(on: &_container, forKey: .responseId, auxiliaryKey: ._responseId)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
		try targetId?.encode(on: &_container, forKey: .targetId, auxiliaryKey: ._targetId)
		try type?.encode(on: &_container, forKey: .type)
		try url?.encode(on: &_container, forKey: .url, auxiliaryKey: ._url)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetupActionOperation else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return accept == _other.accept
		    && contentType == _other.contentType
		    && description_fhir == _other.description_fhir
		    && destination == _other.destination
		    && encodeRequestUrl == _other.encodeRequestUrl
		    && label == _other.label
		    && method == _other.method
		    && origin == _other.origin
		    && params == _other.params
		    && requestHeader == _other.requestHeader
		    && requestId == _other.requestId
		    && resource == _other.resource
		    && responseId == _other.responseId
		    && sourceId == _other.sourceId
		    && targetId == _other.targetId
		    && type == _other.type
		    && url == _other.url
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(accept)
		hasher.combine(contentType)
		hasher.combine(description_fhir)
		hasher.combine(destination)
		hasher.combine(encodeRequestUrl)
		hasher.combine(label)
		hasher.combine(method)
		hasher.combine(origin)
		hasher.combine(params)
		hasher.combine(requestHeader)
		hasher.combine(requestId)
		hasher.combine(resource)
		hasher.combine(responseId)
		hasher.combine(sourceId)
		hasher.combine(targetId)
		hasher.combine(type)
		hasher.combine(url)
	}
}

/**
 Each operation can have one or more header elements.
 
 Header elements would be used to set HTTP headers.
 */
open class TestScriptSetupActionOperationRequestHeader: BackboneElement {
	
	/// HTTP header field name
	public var field: FHIRPrimitive<FHIRString>
	
	/// HTTP headerfield value
	public var value: FHIRPrimitive<FHIRString>
	
	/// Designated initializer taking all required properties
	public init(field: FHIRPrimitive<FHIRString>, value: FHIRPrimitive<FHIRString>) {
		self.field = field
		self.value = value
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		`extension`: [Extension]? = nil,
		field: FHIRPrimitive<FHIRString>,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		value: FHIRPrimitive<FHIRString>
	) {
		self.init(field: field, value: value)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case field; case _field
		case value; case _value
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.field = try FHIRPrimitive<FHIRString>(from: _container, forKey: .field, auxiliaryKey: ._field)
		self.value = try FHIRPrimitive<FHIRString>(from: _container, forKey: .value, auxiliaryKey: ._value)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try field.encode(on: &_container, forKey: .field, auxiliaryKey: ._field)
		try value.encode(on: &_container, forKey: .value, auxiliaryKey: ._value)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptSetupActionOperationRequestHeader else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return field == _other.field
		    && value == _other.value
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(field)
		hasher.combine(value)
	}
}

/**
 A series of required clean up steps.
 
 A series of operations required to clean up after all the tests are executed (successfully or otherwise).
 */
open class TestScriptTeardown: BackboneElement {
	
	/// One or more teardown operations to perform
	public var action: [TestScriptTeardownAction]
	
	/// Designated initializer taking all required properties
	public init(action: [TestScriptTeardownAction]) {
		self.action = action
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		action: [TestScriptTeardownAction],
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init(action: action)
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [TestScriptTeardownAction](from: _container, forKey: .action)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action.encode(on: &_container, forKey: .action)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptTeardown else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
	}
}

/**
 One or more teardown operations to perform.
 
 The teardown action will only contain an operation.
 */
open class TestScriptTeardownAction: BackboneElement {
	
	/// Links or references to common collection(s) of actions
	public var common: TestScriptSetupActionCommon?
	
	/// The teardown operation to perform
	public var operation: TestScriptSetupActionOperation
	
	/// Designated initializer taking all required properties
	public init(operation: TestScriptSetupActionOperation) {
		self.operation = operation
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		common: TestScriptSetupActionCommon? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		operation: TestScriptSetupActionOperation
	) {
		self.init(operation: operation)
		self.common = common
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case common
		case operation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.common = try TestScriptSetupActionCommon(from: _container, forKeyIfPresent: .common)
		self.operation = try TestScriptSetupActionOperation(from: _container, forKey: .operation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try common?.encode(on: &_container, forKey: .common)
		try operation.encode(on: &_container, forKey: .operation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptTeardownAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return common == _other.common
		    && operation == _other.operation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(common)
		hasher.combine(operation)
	}
}

/**
 A test in this script.
 */
open class TestScriptTest: BackboneElement {
	
	/// Tracking/logging name of this test
	public var name: FHIRPrimitive<FHIRString>?
	
	/// Tracking/reporting short description of the test
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// A test operation or assert to perform
	public var action: [TestScriptTestAction]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		action: [TestScriptTestAction]? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init()
		self.action = action
		self.description_fhir = description_fhir
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.name = name
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case action
		case description_fhir = "description"; case _description_fhir = "_description"
		case name; case _name
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.action = try [TestScriptTestAction](from: _container, forKeyIfPresent: .action)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .name, auxiliaryKey: ._name)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try action?.encode(on: &_container, forKey: .action)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try name?.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptTest else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return action == _other.action
		    && description_fhir == _other.description_fhir
		    && name == _other.name
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(action)
		hasher.combine(description_fhir)
		hasher.combine(name)
	}
}

/**
 A test operation or assert to perform.
 
 Action would contain either an operation or an assertion.
 */
open class TestScriptTestAction: BackboneElement {
	
	/// Links or references to common collection(s) of actions
	public var common: TestScriptSetupActionCommon?
	
	/// The setup operation to perform
	public var operation: TestScriptSetupActionOperation?
	
	/// The setup assertion to perform
	public var assert: TestScriptSetupActionAssert?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		assert: TestScriptSetupActionAssert? = nil,
		common: TestScriptSetupActionCommon? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		operation: TestScriptSetupActionOperation? = nil
	) {
		self.init()
		self.assert = assert
		self.common = common
		self.`extension` = `extension`
		self.id = id
		self.modifierExtension = modifierExtension
		self.operation = operation
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case assert
		case common
		case operation
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.assert = try TestScriptSetupActionAssert(from: _container, forKeyIfPresent: .assert)
		self.common = try TestScriptSetupActionCommon(from: _container, forKeyIfPresent: .common)
		self.operation = try TestScriptSetupActionOperation(from: _container, forKeyIfPresent: .operation)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try assert?.encode(on: &_container, forKey: .assert)
		try common?.encode(on: &_container, forKey: .common)
		try operation?.encode(on: &_container, forKey: .operation)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptTestAction else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return assert == _other.assert
		    && common == _other.common
		    && operation == _other.operation
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(assert)
		hasher.combine(common)
		hasher.combine(operation)
	}
}

/**
 Placeholder for evaluated elements.
 
 Variable is set based either on element value in response body or on header field value in the response headers.
 */
open class TestScriptVariable: BackboneElement {
	
	/// Descriptive name for this variable
	public var name: FHIRPrimitive<FHIRString>
	
	/// Default, hard-coded, or user-defined value for this variable
	public var defaultValue: FHIRPrimitive<FHIRString>?
	
	/// Natural language description of the variable
	public var description_fhir: FHIRPrimitive<FHIRString>?
	
	/// The FHIRPath expression against the fixture body
	public var expression: FHIRPrimitive<FHIRString>?
	
	/// HTTP header field name for source
	public var headerField: FHIRPrimitive<FHIRString>?
	
	/// Hint help text for default value to enter
	public var hint: FHIRPrimitive<FHIRString>?
	
	/// XPath or JSONPath against the fixture body
	public var path: FHIRPrimitive<FHIRString>?
	
	/// Fixture Id of source expression or headerField within this variable
	public var sourceId: FHIRPrimitive<FHIRString>?
	
	/// Designated initializer taking all required properties
	public init(name: FHIRPrimitive<FHIRString>) {
		self.name = name
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		defaultValue: FHIRPrimitive<FHIRString>? = nil,
		description_fhir: FHIRPrimitive<FHIRString>? = nil,
		expression: FHIRPrimitive<FHIRString>? = nil,
		`extension`: [Extension]? = nil,
		headerField: FHIRPrimitive<FHIRString>? = nil,
		hint: FHIRPrimitive<FHIRString>? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		modifierExtension: [Extension]? = nil,
		name: FHIRPrimitive<FHIRString>,
		path: FHIRPrimitive<FHIRString>? = nil,
		sourceId: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(name: name)
		self.defaultValue = defaultValue
		self.description_fhir = description_fhir
		self.expression = expression
		self.`extension` = `extension`
		self.headerField = headerField
		self.hint = hint
		self.id = id
		self.modifierExtension = modifierExtension
		self.path = path
		self.sourceId = sourceId
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case defaultValue; case _defaultValue
		case description_fhir = "description"; case _description_fhir = "_description"
		case expression; case _expression
		case headerField; case _headerField
		case hint; case _hint
		case name; case _name
		case path; case _path
		case sourceId; case _sourceId
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.defaultValue = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .defaultValue, auxiliaryKey: ._defaultValue)
		self.description_fhir = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .description_fhir, auxiliaryKey: ._description_fhir)
		self.expression = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .expression, auxiliaryKey: ._expression)
		self.headerField = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .headerField, auxiliaryKey: ._headerField)
		self.hint = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .hint, auxiliaryKey: ._hint)
		self.name = try FHIRPrimitive<FHIRString>(from: _container, forKey: .name, auxiliaryKey: ._name)
		self.path = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .path, auxiliaryKey: ._path)
		self.sourceId = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .sourceId, auxiliaryKey: ._sourceId)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try defaultValue?.encode(on: &_container, forKey: .defaultValue, auxiliaryKey: ._defaultValue)
		try description_fhir?.encode(on: &_container, forKey: .description_fhir, auxiliaryKey: ._description_fhir)
		try expression?.encode(on: &_container, forKey: .expression, auxiliaryKey: ._expression)
		try headerField?.encode(on: &_container, forKey: .headerField, auxiliaryKey: ._headerField)
		try hint?.encode(on: &_container, forKey: .hint, auxiliaryKey: ._hint)
		try name.encode(on: &_container, forKey: .name, auxiliaryKey: ._name)
		try path?.encode(on: &_container, forKey: .path, auxiliaryKey: ._path)
		try sourceId?.encode(on: &_container, forKey: .sourceId, auxiliaryKey: ._sourceId)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? TestScriptVariable else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return defaultValue == _other.defaultValue
		    && description_fhir == _other.description_fhir
		    && expression == _other.expression
		    && headerField == _other.headerField
		    && hint == _other.hint
		    && name == _other.name
		    && path == _other.path
		    && sourceId == _other.sourceId
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(defaultValue)
		hasher.combine(description_fhir)
		hasher.combine(expression)
		hasher.combine(headerField)
		hasher.combine(hint)
		hasher.combine(name)
		hasher.combine(path)
		hasher.combine(sourceId)
	}
}
