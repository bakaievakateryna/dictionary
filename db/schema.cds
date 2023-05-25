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
    student : Association to many Klass on student.lehrer = $self;
}

entity Klass
{
    key Nummer : String(30);
    Klasen_Lehrer : String(12);
    lehrer : Association to one Lehrer;
    wort : Association to many Wort on wort.klass = $self;
}

entity Wort
{
    key Wort : String;
    Artikel : String(100);
    worttaten : String(100) not null;
    sendstatus : String(100);
    klass : Association to one Klass;
    lerntstatus : String(100);
    criticality_send : Integer;
    criticality_lernt : Integer;
}
