{
	"contents": {
		"bf8f8d7b-5ad0-48f3-a8e0-061d8aea81e3": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "workflow.exercicio",
			"subject": "exercicio",
			"name": "exercicio",
			"documentation": "exercicio kpmg",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"89c194f2-7ada-49cb-89ca-3eb0cae66e2b": {
					"name": "ServiceTask1"
				},
				"95c67b35-8b62-42f3-aa93-c981efef494e": {
					"name": "UserTask1"
				},
				"eef5ad15-47a1-405e-b307-38cf3aee1d59": {
					"name": "ScriptTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"e27eb0fa-70f1-43b6-b379-a6585774c491": {
					"name": "SequenceFlow2"
				},
				"dd311f49-2ea3-4ce1-9695-7f6ec6794fd9": {
					"name": "SequenceFlow3"
				},
				"24bb2f84-d8fc-428f-b78c-09f4140ab62f": {
					"name": "SequenceFlow4"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "89c194f2-7ada-49cb-89ca-3eb0cae66e2b"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"a5d268c9-797d-442b-898e-32e17102ba33": {},
				"278c9814-24a5-4007-b659-d40a3429cc7a": {},
				"aa5e4f88-8247-4c32-94b5-fb4a2c97a04c": {},
				"46b5dec5-7b21-4f48-aad9-d74159900a29": {},
				"a789e4c2-0354-464c-b1f3-977b2bc0c594": {},
				"3a58b6c7-ef9d-4543-861b-4cc1de34e8fe": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 578,
			"y": 24.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,42 94,42",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "a5d268c9-797d-442b-898e-32e17102ba33",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 4,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 1
		},
		"89c194f2-7ada-49cb-89ca-3eb0cae66e2b": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"httpMethod": "POST",
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"a5d268c9-797d-442b-898e-32e17102ba33": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 94,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "89c194f2-7ada-49cb-89ca-3eb0cae66e2b"
		},
		"e27eb0fa-70f1-43b6-b379-a6585774c491": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "89c194f2-7ada-49cb-89ca-3eb0cae66e2b",
			"targetRef": "95c67b35-8b62-42f3-aa93-c981efef494e"
		},
		"278c9814-24a5-4007-b659-d40a3429cc7a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,42 244,42",
			"sourceSymbol": "a5d268c9-797d-442b-898e-32e17102ba33",
			"targetSymbol": "aa5e4f88-8247-4c32-94b5-fb4a2c97a04c",
			"object": "e27eb0fa-70f1-43b6-b379-a6585774c491"
		},
		"95c67b35-8b62-42f3-aa93-c981efef494e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"id": "usertask1",
			"name": "UserTask1"
		},
		"aa5e4f88-8247-4c32-94b5-fb4a2c97a04c": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 244,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "95c67b35-8b62-42f3-aa93-c981efef494e"
		},
		"dd311f49-2ea3-4ce1-9695-7f6ec6794fd9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "95c67b35-8b62-42f3-aa93-c981efef494e",
			"targetRef": "eef5ad15-47a1-405e-b307-38cf3aee1d59"
		},
		"46b5dec5-7b21-4f48-aad9-d74159900a29": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "294,39 458,39",
			"sourceSymbol": "aa5e4f88-8247-4c32-94b5-fb4a2c97a04c",
			"targetSymbol": "a789e4c2-0354-464c-b1f3-977b2bc0c594",
			"object": "dd311f49-2ea3-4ce1-9695-7f6ec6794fd9"
		},
		"eef5ad15-47a1-405e-b307-38cf3aee1d59": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"a789e4c2-0354-464c-b1f3-977b2bc0c594": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 408,
			"y": 6,
			"width": 100,
			"height": 60,
			"object": "eef5ad15-47a1-405e-b307-38cf3aee1d59"
		},
		"24bb2f84-d8fc-428f-b78c-09f4140ab62f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "eef5ad15-47a1-405e-b307-38cf3aee1d59",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"3a58b6c7-ef9d-4543-861b-4cc1de34e8fe": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "458,39 595.5,39",
			"sourceSymbol": "a789e4c2-0354-464c-b1f3-977b2bc0c594",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "24bb2f84-d8fc-428f-b78c-09f4140ab62f"
		}
	}
}