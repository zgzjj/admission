package com.xc.po;

import javax.persistence.*;

@Entity
@Table(name = "xc_subject")
public class XcSubject {
    @GeneratedValue
    @Id
    @Column(name = "subject_id",length = 20)
    private Integer subjectId; //学科id
    @Column(name = "subject_name",length = 20)
    private String subjectName; //学科名
    @Column(name = "subject_date",length = 32)
    private String subjectDate;//学科考试时间

    public Integer getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Integer subjectId) {
        this.subjectId = subjectId;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public String getSubjectDate() {
        return subjectDate;
    }

    public void setSubjectDate(String subjectDate) {
        this.subjectDate = subjectDate;
    }
}
