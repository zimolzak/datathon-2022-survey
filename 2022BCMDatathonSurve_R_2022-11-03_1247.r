#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('2022BCMDatathonSurve_DATA_2022-11-03_1247.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$redcap_survey_identifier)="Survey Identifier"
label(data$bcm_datathon_survey_2022_predatathon_knowledge_par_timestamp)="Survey Timestamp"
label(data$ar)="1. Academic rank"
label(data$ar_o)="Other, specify"
label(data$pdrc)="2. Primary department/section/research center"
label(data$yabcm)="3. Number of years at BCM"
label(data$phdaai)="1. I participated previously in a hackathon/datathon "
label(data$qipr)="2. I had experience using electronic medical record (EMR) data for research or quality improvement prior to this datathon "
label(data$pot)="1. Number of people on your datathon team"
label(data$wwdtm)="2. Have you worked with the members of your datathon team before"
label(data$role___1)="3. Your role on your team: (mark all that apply) (choice=Content (clinical) expert)"
label(data$role___2)="3. Your role on your team: (mark all that apply) (choice=Project lead)"
label(data$role___3)="3. Your role on your team: (mark all that apply) (choice=Chart reviewer)"
label(data$role___4)="3. Your role on your team: (mark all that apply) (choice=Data scientist)"
label(data$role___5)="3. Your role on your team: (mark all that apply) (choice=Statistical analyst)"
label(data$role___6)="3. Your role on your team: (mark all that apply) (choice=Data warehouse expert)"
label(data$role___7)="3. Your role on your team: (mark all that apply) (choice=Data manager)"
label(data$role___8)="3. Your role on your team: (mark all that apply) (choice=Learner)"
label(data$role___9)="3. Your role on your team: (mark all that apply) (choice=Other (please specify))"
label(data$orole)="Other, specify"
label(data$kadapr)="1. How knowledgeable were you about data availability at BCM prior to the datathon"
label(data$kadupr)="2. How knowledgeable were you about how to use a data warehouse prior to the datathon?"
label(data$kadlpr)="3. What was your understanding of a data warehouse limitations prior to the datathon"
label(data$bcm_datathon_survey_2022_predatathon_knowledge_par_complete)="Complete?"
label(data$bcm_datathon_survey_2022_postdatathon_knowledge_pa_timestamp)="Survey Timestamp"
label(data$hrdw)="1. Estimate how many person-hours you (personally) spent on datathon work, including time spent with BCM information technology (IT)"
label(data$prodw)="2. What percentage of the time spent on datathon work was with BCM IT"
label(data$doifda)="3. How difficult was obtaining information from a Data warehouse"
label(data$dwwda)="4. How difficult was working with a Data warehouse files"
label(data$kadaf)="1. How knowledgeable were you about data availability at BCM following the datathon"
label(data$kaduf)="2. How knowledgeable were you about how to use a data warehouse following the datathon"
label(data$kadlf)="3. What was your understanding of a data warehouse limitations following the datathon"
label(data$cpbeoda)="1. I completed my project by the end of the datathon"
label(data$sacq)="2. I successfully answered my clinical question"
label(data$cwiod)="3. I collaborated with individuals outside of my department"
label(data$cwni)="4. I collaborated with new individuals as part of the datathon"
label(data$pcfsuda)="5. I plan to conduct future studies using data from the BCM warehouse"
label(data$tpriasa)="6. Our team datathon project resulted in a scientific abstract for a local or national meeting"
label(data$tdprip)="7. Our team datathon project resulted in a publication"
label(data$pidaav)="8. Participating in the BCM datathon was a valuable experience"
label(data$wpfda)="9. I would participate in a future BCM datathon"
label(data$www)="10. What worked well or didnt work, or general comments"
label(data$bcm_datathon_survey_2022_postdatathon_knowledge_pa_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$ar.factor = factor(data$ar,levels=c("1","2","3","4","5","6"))
data$phdaai.factor = factor(data$phdaai,levels=c("1","0"))
data$qipr.factor = factor(data$qipr,levels=c("1","2","3","4","5"))
data$wwdtm.factor = factor(data$wwdtm,levels=c("1","2","3"))
data$role___1.factor = factor(data$role___1,levels=c("0","1"))
data$role___2.factor = factor(data$role___2,levels=c("0","1"))
data$role___3.factor = factor(data$role___3,levels=c("0","1"))
data$role___4.factor = factor(data$role___4,levels=c("0","1"))
data$role___5.factor = factor(data$role___5,levels=c("0","1"))
data$role___6.factor = factor(data$role___6,levels=c("0","1"))
data$role___7.factor = factor(data$role___7,levels=c("0","1"))
data$role___8.factor = factor(data$role___8,levels=c("0","1"))
data$role___9.factor = factor(data$role___9,levels=c("0","1"))
data$kadapr.factor = factor(data$kadapr,levels=c("1","2","3","4","5"))
data$kadupr.factor = factor(data$kadupr,levels=c("1","2","3","4","5"))
data$kadlpr.factor = factor(data$kadlpr,levels=c("1","2","3","4","5"))
data$bcm_datathon_survey_2022_predatathon_knowledge_par_complete.factor = factor(data$bcm_datathon_survey_2022_predatathon_knowledge_par_complete,levels=c("0","1","2"))
data$doifda.factor = factor(data$doifda,levels=c("1","2","3","4","5"))
data$dwwda.factor = factor(data$dwwda,levels=c("1","2","3","4","5"))
data$kadaf.factor = factor(data$kadaf,levels=c("1","2","3","4","5"))
data$kaduf.factor = factor(data$kaduf,levels=c("1","2","3","4","5"))
data$kadlf.factor = factor(data$kadlf,levels=c("1","2","3","4","5"))
data$cpbeoda.factor = factor(data$cpbeoda,levels=c("1","2","3"))
data$sacq.factor = factor(data$sacq,levels=c("1","2","3"))
data$cwiod.factor = factor(data$cwiod,levels=c("1","0"))
data$cwni.factor = factor(data$cwni,levels=c("1","0"))
data$pcfsuda.factor = factor(data$pcfsuda,levels=c("1","2","3","4","5"))
data$tpriasa.factor = factor(data$tpriasa,levels=c("1","2","3"))
data$tdprip.factor = factor(data$tdprip,levels=c("1","2","3"))
data$pidaav.factor = factor(data$pidaav,levels=c("1","2","3","4","5"))
data$wpfda.factor = factor(data$wpfda,levels=c("1","2","3","4","5"))
data$bcm_datathon_survey_2022_postdatathon_knowledge_pa_complete.factor = factor(data$bcm_datathon_survey_2022_postdatathon_knowledge_pa_complete,levels=c("0","1","2"))

levels(data$ar.factor)=c("Student","Fellow","Assistant Professor","Associate Professor","Full Professor","Other (e.g. Staff, Instructor)")
levels(data$phdaai.factor)=c("Yes","No")
levels(data$qipr.factor)=c("1 (Very Little)","2","3 (Moderate)","4","5 (Great Deal)")
levels(data$wwdtm.factor)=c("Yes - all of the team member","Yes - some of the team members","No")
levels(data$role___1.factor)=c("Unchecked","Checked")
levels(data$role___2.factor)=c("Unchecked","Checked")
levels(data$role___3.factor)=c("Unchecked","Checked")
levels(data$role___4.factor)=c("Unchecked","Checked")
levels(data$role___5.factor)=c("Unchecked","Checked")
levels(data$role___6.factor)=c("Unchecked","Checked")
levels(data$role___7.factor)=c("Unchecked","Checked")
levels(data$role___8.factor)=c("Unchecked","Checked")
levels(data$role___9.factor)=c("Unchecked","Checked")
levels(data$kadapr.factor)=c("1 (Very Little)","2","3 (Moderate)","4","5 (Great Deal)")
levels(data$kadupr.factor)=c("1 (Very Little)","2","3 (Moderate)","4","5 (Great Deal)")
levels(data$kadlpr.factor)=c("1 (Very Little)","2","3 (Moderate)","4","5 (Great Deal)")
levels(data$bcm_datathon_survey_2022_predatathon_knowledge_par_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$doifda.factor)=c("1 (Easy)","2","3 (Moderate)","4","5 (Difficult)")
levels(data$dwwda.factor)=c("1 (Easy)","2","3 (Moderate)","4","5 (Difficult)")
levels(data$kadaf.factor)=c("1 (Very Little)","2","3 (Moderate)","4","5 (Great Deal)")
levels(data$kaduf.factor)=c("1 (Very Little)","2","3 (Moderate)","4","5 (Great Deal)")
levels(data$kadlf.factor)=c("1 (Very Little)","2","3 (Moderate)","4","5 (Great Deal)")
levels(data$cpbeoda.factor)=c("Yes","Partially","No")
levels(data$sacq.factor)=c("Yes","Partially","No")
levels(data$cwiod.factor)=c("Yes","No")
levels(data$cwni.factor)=c("Yes","No")
levels(data$pcfsuda.factor)=c("1 (Disagree)","2","3 (Neutral)","4","5 (Agree)")
levels(data$tpriasa.factor)=c("Yes","Planned","No")
levels(data$tdprip.factor)=c("Yes","Planned","No")
levels(data$pidaav.factor)=c("1 (Disagree)","2","3 (Neutral)","4","5 (Agree)")
levels(data$wpfda.factor)=c("1 (Disagree)","2","3 (Neutral)","4","5 (Agree)")
levels(data$bcm_datathon_survey_2022_postdatathon_knowledge_pa_complete.factor)=c("Incomplete","Unverified","Complete")
