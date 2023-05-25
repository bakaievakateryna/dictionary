using deutchwoService as service from '../../srv/service'; 
@readonly
annotate service.StudentWort with @(
    UI.LineItem : [
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
            Label : 'Worttaten',
            Value : worttaten,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Lernt status',
            Value : lerntstatus,
            Criticality : criticality_lernt,
        },
    ],
    UI.HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Wort',
        TypeNamePlural : 'Wörter',
    },
);
annotate service.StudentWort with @(
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
                Label : 'klass_Nummer',
                Value : klass_Nummer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lerntstatus',
                Value : lerntstatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality_lernt',
                Value : criticality_lernt,
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
annotate service.StudentWort with @(
    UI.SelectionFields : [
        klass_Nummer,
        lerntstatus,
        Wort,
        worttaten,
    ]
);
annotate service.StudentWort with {
    klass @Common.Label : 'Klasse Nummer'
};
annotate service.StudentWort with {
    lerntstatus @Common.Label : 'Lern status'
};
annotate service.StudentWort with {
    Wort @Common.Label : 'Wort'
};
annotate service.StudentWort with {
    worttaten @Common.Label : 'Worttaten'
};
