//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
//  Copyright 2022 Apple Inc.
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
 None
 
 URL: http://hl7.org/fhir/CodeSystem/medicationknowledge-status
 ValueSet: http://hl7.org/fhir/ValueSet/medicationknowledge-status
 */
public enum MedicationKnowledgeStatusCodes: String, FHIRPrimitiveType {
	
	/// The medication referred to by this MedicationKnowledge is in active use within the drug database or inventory
	/// system.
	case active
	
	/// The medication referred to by this MedicationKnowledge was entered in error within the drug database or
	/// inventory system.
	case enteredInError = "entered-in-error"
	
	/// The medication referred to by this MedicationKnowledge is not in active use within the drug database or
	/// inventory system.
	case inactive
}