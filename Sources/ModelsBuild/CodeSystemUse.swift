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
 The purpose of the Claim: predetermination, preauthorization, claim.
 
 URL: http://hl7.org/fhir/claim-use
 ValueSet: http://hl7.org/fhir/ValueSet/claim-use
 */
public enum Use: String, FHIRPrimitiveType {
	
	/// The treatment is complete and this represents a Claim for the services.
	case claim
	
	/// The treatment is proposed and this represents a Pre-authorization for the services.
	case preauthorization
	
	/// The treatment is proposed and this represents a Pre-determination for the services.
	case predetermination
}
