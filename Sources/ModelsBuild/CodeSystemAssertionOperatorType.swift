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
 The type of operator to use for assertion.
 
 URL: http://hl7.org/fhir/assert-operator-codes
 ValueSet: http://hl7.org/fhir/ValueSet/assert-operator-codes
 */
public enum AssertionOperatorType: String, FHIRPrimitiveType {
	
	/// Compare value within a known set of values.
	case `in`
	
	/// Compare value string contains a known value.
	case contains
	
	/// Compare value is empty.
	case empty
	
	/// Default value. Equals comparison.
	case equals
	
	/// Evaluate the FHIRPath expression as a boolean condition.
	case eval
	
	/// Compare value to be greater than a known value.
	case greaterThan
	
	/// Compare value to be less than a known value.
	case lessThan
	
	/// Manually evaluate the condition described by this assert. The test engine SHALL pause and provide an input
	/// mechanism to set the outcome of this assert to 'pass', 'fail', 'skip' or 'stop'.
	case manualEval
	
	/// Compare value string does not contain a known value.
	case notContains
	
	/// Compare value is not empty.
	case notEmpty
	
	/// Not equals comparison.
	case notEquals
	
	/// Compare value not within a known set of values.
	case notIn
}
