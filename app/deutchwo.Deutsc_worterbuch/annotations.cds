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
            Label : 'Wortart',
            Value : worttaten,
        },
        {
            $Type : 'UI.DataField',
            Value : sendstatus,
            Label : 'Status',
            Criticality : criticality_send,
        },
    ],
    UI.HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Wort',
        TypeNamePlural : 'Wörter',
    },
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
annotate service.Wort with @(
    UI.SelectionFields : [
        klass_Nummer,
        sendstatus,
        worttaten,
    ]
);
annotate service.Wort with {
    klass @Common.Label : 'Klasse nummer'
};
annotate service.Wort with {
    sendstatus @Common.Label : 'Send Status'
};
annotate service.Wort with {
    worttaten @Common.Label : 'Worttaten'
};
