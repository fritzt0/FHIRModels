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
 The type of actor - system or human.
 
 URL: http://hl7.org/fhir/examplescenario-actor-type
 ValueSet: http://hl7.org/fhir/ValueSet/examplescenario-actor-type
 */
public enum ExampleScenarioActorType: String, FHIRPrimitiveType {
	
	/// A human actor
	case person
	
	/// A software application or other system
	case system
}
