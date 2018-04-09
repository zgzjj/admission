package com.xc.po;

import javax.persistence.*;

@Entity
@Table(name = "xc_user")
public class XcUser {
    @GeneratedValue
    @Id
    @Column(name = "user_id",length = 32)
    private Integer userId;      //ID
    @Column(name = "name",length = 20)
    private String name;    //姓名
    @Column(name = "card_number",length = 32)
    private String cardNumber;  //身份证号
    @Column(name = "sex",length = 8)
    private int sex;    //性别
    @Column(name = "age",length = 8)
    private int age;    //年龄
    @Column(name = "school",length = 20)
    private String school;  //毕业学校
    @Column(name = "nation",length = 10)
    private String nation;  //民族
    @Column(name = "member",length = 8)
    private int member; //团员
    @Column(name = "address",length = 32)
    private String address; //家庭住址
    @Column(name = "photo",length = 100)
    private String photo;   //相片路径
    @Column(name = "exam_number",length = 32)
    private String examNumber;  //准考证号
    @Column(name = "status",length = 8)
    private int status=0;     //是否缴费  0-未缴费  1-已缴费

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public int getMember() {
        return member;
    }

    public void setMember(int member) {
        this.member = member;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getExamNumber() {
        return examNumber;
    }

    public void setExamNumber(String examNumber) {
        this.examNumber = examNumber;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
