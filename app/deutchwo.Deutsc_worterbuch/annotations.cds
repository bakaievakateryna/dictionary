using deutchwoService as service from '../../srv/service';

annotate service.Wort with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Artikel',
            Value : Artikel,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Wort',
            Value : Wort,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Worttaten',
            Value : worttaten,
        },
        {
            $Type : 'UI.DataField',
            Value : sendstatus,
            Label : 'Status',
            Criticality : criticality_send,
        },
    ]
);
annotate service.Wort with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Wort',
                Value : Wort,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Artikel',
                Value : Artikel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'worttaten',
                Value : worttaten,
            },
            {
                $Type : 'UI.DataField',
                Label : 'sent',
                Value : sent,
            },
            {
                $Type : 'UI.DataField',
                Label : 'student_name',
                Value : student_name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
