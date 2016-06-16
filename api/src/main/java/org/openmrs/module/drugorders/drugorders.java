/**
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/. OpenMRS is also distributed under
 * the terms of the Healthcare Disclaimer located at http://openmrs.org/license.
 *
 * Copyright (C) OpenMRS Inc. OpenMRS is a registered trademark and the OpenMRS
 * graphic logo is a trademark of OpenMRS Inc.
 */
package org.openmrs.module.drugorders;

import java.io.Serializable;
import java.util.Date;
import org.openmrs.BaseOpenmrsObject;
import org.openmrs.BaseOpenmrsMetadata;

/**
 * It is a model class. It should extend either {@link BaseOpenmrsObject} or {@link BaseOpenmrsMetadata}.
 */
public class drugorders extends BaseOpenmrsObject implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer id;
        private String Uuid;
        private Date startdate;
        private String drugname;
        private Integer dose;
        private Integer duration;
        private Integer quantity;
        private String associateddiagnosis;
        private String patientinstructions;
        private String pharmacistinstructions;
	
        public drugorders(){
            
        }
        
	@Override
	public Integer getId() {
		return id;
	}
	
	@Override
	public void setId(Integer id) {
		this.id = id;
	}
        
        @Override
	public String getUuid() {
		return Uuid;
	}
        
        @Override
	public void setUuid(String Uuid) {
		this.Uuid = Uuid;
	}
        
        /*
        public String getDrugname() {
		return drugname;
	}

	public void setDrugname(String drugname) {
		this.drugname = drugname;
	}
        
        
        
        public Date getStartDate() {
            return startdate;
        }

        public void setStartDate(Date startDate) {
            this.startdate = startDate;
        }
   
        public Integer getDose() {
		return dose;
	}
	
	public void setDose(Integer dose) {
		this.dose = dose;
	}
        
        public Integer getDuration() {
		return duration;
	}
	
	public void setDuration(Integer duration) {
		this.duration = duration;
	}
        
        public Integer getQuantity() {
		return quantity;
	}
	
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
        
        public String getAssociatedDiagnosis() {
		return associateddiagnosis;
	}

	public void setAssociatedDiagnosis(String associatedDiagnosis) {
		this.associateddiagnosis = associatedDiagnosis;
	}
        
        public String getPatientInstructions() {
		return patientinstructions;
	}

	public void setPatientInstructions(String patientInstructions) {
		this.patientinstructions = patientInstructions;
	}
        
        public String getPharmacistInstructions() {
		return pharmacistinstructions;
	}

	public void setPharmacistInstructions(String pharmacistInstructions) {
		this.pharmacistinstructions = pharmacistInstructions;
	} */
	
}