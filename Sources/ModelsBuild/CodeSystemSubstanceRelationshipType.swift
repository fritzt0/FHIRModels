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
 The relationship between two substance types.
 
 URL: http://hl7.org/fhir/substance-relationship-type
 ValueSet: http://hl7.org/fhir/ValueSet/substance-relationship-type
 */
public enum SubstanceRelationshipType: String, FHIRPrimitiveType {
	
	/// activeMoiety
	case activeMoiety = "ActiveMoiety"
	
	/// impurity
	case impurity = "Impurity"
	
	/// polymorph
	case polymorph = "Polymorph"
	
	/// salt
	case salt = "Salt"
	
	/// startingMaterial
	case startingMaterial = "StartingMaterial"
}
