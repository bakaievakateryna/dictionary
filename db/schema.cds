namespace deutchwo;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Lehrer
{
    key name : String;
    telefon_nummer : String(100);
    email : String(100);
    student : Association to many Student on student.lehrer = $self;
}

entity Student
{
    key name : String(30);
    telefon_numer : String(12);
    email : String(100);
    lehrer : Association to one Lehrer;
    wort : Association to many Wort on wort.student = $self;
}

entity Wort
{
    key Wort : String;
    key Artikel : String(100);
    key worttaten : String(100);
    key status : String(100);
    student : Association to one Student;
}
