//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 3.0.1.11917
//  Copyright 2020 Apple Inc.
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
 The type of relationship between documents.
 
 URL: http://hl7.org/fhir/document-relationship-type
 ValueSet: http://hl7.org/fhir/ValueSet/document-relationship-type
 */
public enum DocumentRelationshipType: String, FHIRPrimitiveType {
	
	/// This document logically replaces or supersedes the target document.
	case replaces = "replaces"
	
	/// This document was generated by transforming the target document (e.g. format or language conversion).
	case transforms = "transforms"
	
	/// This document is a signature of the target document.
	case signs = "signs"
	
	/// This document adds additional information to the target document.
	case appends = "appends"
}