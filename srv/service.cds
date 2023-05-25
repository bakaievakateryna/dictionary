using deutchwo from '../db/schema';

service deutchwoService
{
    entity Klass as projection on deutchwo.Klass
    {
        *
    }
    excluding
    {
        lehrer,
        wort
    };

    entity Wort as projection on deutchwo.Wort
    {
        *
    }
    excluding
    {
        lerntstatus,
        criticality_lernt
    };

    entity Lehrer as projection on deutchwo.Lehrer
    {
        *
    }
    excluding
    {
        student
    };

    @cds.redirection.target : false
    @readonly
    entity StudentWort as projection on deutchwo.Wort
    {
        *
    }
    excluding
    {
        sendstatus,
        criticality_send
    };
}
