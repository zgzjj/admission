package com.xc.po;

import javax.persistence.*;

@Entity
@Table(name = "xc_exam")
public class XcExam {
    @GeneratedValue
    @Id
    @Column(name = "exam_id", nullable = false)
    private Integer examId;  //考试id
    @Column(name = "uid", length = 32)
    private String uId; //考试学生id
    @Column(name = "sid", length = 32)
    private String sId; //学科id
    @Column(name = "exam_date", length = 32)
    private String examDate; //考试时间
    @Column(name = "achievement", length = 10)
    private int achievement;//考试成绩

    public Integer getExamId() {
        return examId;
    }

    public void setExamId(Integer examId) {
        this.examId = examId;
    }

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    public String getsId() {
        return sId;
    }

    public void setsId(String sId) {
        this.sId = sId;
    }


    public int getAchievement() {
        return achievement;
    }

    public void setAchievement(int achievement) {
        this.achievement = achievement;
    }

    public String getExamDate() {
        return examDate;
    }

    public void setExamDate(String examDate) {
        this.examDate = examDate;
    }
}
