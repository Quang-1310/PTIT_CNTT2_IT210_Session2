package org.example.ptit_cntt2_it210_session2.Kha2.model;

public class Student {
    private String studentName;
    private int score;

    public Student(String studentName, int score) {
        this.studentName = studentName;
        this.score = score;
    }

    public String getStudentName() {
        return studentName;
    }

    public int getScore() {
        return score;
    }
}
