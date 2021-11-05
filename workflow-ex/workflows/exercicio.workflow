{
	"contents": {
		"bf8f8d7b-5ad0-48f3-a8e0-061d8aea81e3": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "workflow.exercicio",
			"subject": "exercicio",
			"businessKey": "${context.RequestId}",
			"customAttributes": [{
				"id": "RequestId",
				"label": "RequestId",
				"type": "string",
				"value": "${context.RequestId}"
			}, {
				"id": "Title",
				"label": "Title",
				"type": "string",
				"value": "${context.Title}"
			}, {
				"id": "Type",
				"label": "Type",
				"type": "string",
				"value": "${context.Investment.Type}"
			}, {
				"id": "TotalCost",
				"label": "TotalCost",
				"type": "string",
				"value": "${context.Investment.TotalCost}"
			}, {
				"id": "Capex",
				"label": "Capex",
				"type": "string",
				"value": "${context.Investment.Capex}"
			}, {
				"id": "Opex",
				"label": "Opex",
				"type": "string",
				"value": "${context.Investment.Opex}"
			}, {
				"id": "ROI",
				"label": "ROI",
				"type": "string",
				"value": "${context.Investment.ROI}"
			}, {
				"id": "Currency",
				"label": "Currency",
				"type": "string",
				"value": "${context.Investment.Currency}"
			}, {
				"id": "approvalStatus",
				"label": "approvalStatus",
				"type": "string",
				"value": "${context.Investment.Type}"
			}],
			"name": "exercicio",
			"documentation": "exercicio kpmg",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"8b7692ac-649b-4c6c-9cd5-e776856c0196": {
					"name": "EndEvent2"
				},
				"7a09515e-0781-430a-82c1-8b231cffa2b0": {
					"name": "End Approval Step"
				}
			},
			"activities": {
				"71dd504f-b2ba-4699-a555-77e6ccda3974": {
					"name": "Preapare Approval"
				},
				"f7285ee4-f626-4920-a5c4-775b005976d7": {
					"name": "Get Approvers"
				},
				"9eadfa3f-fd27-4d3c-9fb4-20bda11b4138": {
					"name": "Process Approver Details"
				},
				"8418baef-4a2f-4030-a941-deca206fac35": {
					"name": "Approval Needed?"
				},
				"4a8a2f58-0dc9-48e2-a95b-7834779911a4": {
					"name": "Approval task"
				},
				"365dbeb8-d9cb-4be4-9a78-8abf0140fb5c": {
					"name": "Process Approval Result"
				},
				"2813bd92-b8fe-4cf6-aeaa-17176a987d08": {
					"name": "Approval Decision"
				},
				"6f74680f-d949-47e4-a064-0e33cd9e5451": {
					"name": "Rework Approval Request"
				}
			},
			"sequenceFlows": {
				"355a138c-cfd7-451d-b6ae-d5d9a37f28df": {
					"name": "SequenceFlow9"
				},
				"67d314b1-c2ad-4c7a-b956-f88f53dd4c84": {
					"name": "SequenceFlow10"
				},
				"dc5de5ff-17ba-4f97-ab6b-77d632bd050d": {
					"name": "SequenceFlow11"
				},
				"49f611d9-938f-44f8-bb1c-15a4f687ae98": {
					"name": "SequenceFlow12"
				},
				"e7b18e4c-db1a-4d00-a209-7dc9b3ebaf39": {
					"name": "Yes"
				},
				"0bdf184d-495a-4aa3-aaae-089b784463c3": {
					"name": "SequenceFlow14"
				},
				"a9113375-80a9-47b9-bac4-c01b7dad21ee": {
					"name": "SequenceFlow15"
				},
				"4714b3c5-ddd7-4f41-801a-9d8040ef9966": {
					"name": "Rejected"
				},
				"6a0f1799-2df4-4f35-9b54-a13929106c86": {
					"name": "SequenceFlow17"
				},
				"40c44292-d50d-4940-8eec-0ea4bb55e78e": {
					"name": "Rework"
				},
				"b5d137ce-54fa-4826-983e-db6cc5d8732f": {
					"name": "Accepted"
				},
				"67fbbd0d-7914-4692-97fa-f734d58c9691": {
					"name": "No"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"54f5b8cb-6a21-4492-8823-4c2bdeae1d1e": {}
			}
		},
		"8b7692ac-649b-4c6c-9cd5-e776856c0196": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2",
			"eventDefinitions": {
				"63f69a3d-2d30-4b37-8d10-61cd29225016": {}
			}
		},
		"71dd504f-b2ba-4699-a555-77e6ccda3974": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/exercicio/PrepareApproval.js",
			"id": "scripttask4",
			"name": "Preapare Approval"
		},
		"f7285ee4-f626-4920-a5c4-775b005976d7": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rest/v2/rule-services",
			"httpMethod": "POST",
			"xsrfPath": "",
			"requestVariable": "${context.internal.rulesPayload}",
			"responseVariable": "${context.internal.ruleresult}",
			"id": "servicetask3",
			"name": "Get Approvers"
		},
		"355a138c-cfd7-451d-b6ae-d5d9a37f28df": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "71dd504f-b2ba-4699-a555-77e6ccda3974"
		},
		"67d314b1-c2ad-4c7a-b956-f88f53dd4c84": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "71dd504f-b2ba-4699-a555-77e6ccda3974",
			"targetRef": "f7285ee4-f626-4920-a5c4-775b005976d7"
		},
		"dc5de5ff-17ba-4f97-ab6b-77d632bd050d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "f7285ee4-f626-4920-a5c4-775b005976d7",
			"targetRef": "9eadfa3f-fd27-4d3c-9fb4-20bda11b4138"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"93dd1ed0-00c4-4f90-8918-23d6d22e1bc7": {},
				"2223d2ac-162d-4534-bd47-f84fc75bb321": {},
				"a193e896-00ab-4d67-aaa3-5dda2f0a41d0": {},
				"70b46308-56f3-48f4-93e5-44afb66a3bf9": {},
				"885259b3-9011-4008-ae96-f59667e40bdf": {},
				"77575700-bfd8-447c-b9a0-68b01fb7be34": {},
				"8f6fd12d-bcc5-43c5-840f-9ce65cc37698": {},
				"ed54b765-ee90-4b1f-a590-ac03df0a2872": {},
				"d450b7ea-2abd-487a-a4c8-565d34498580": {},
				"a09445e9-0a62-461b-b71d-b2986bc23a1b": {},
				"a232e0a6-65ce-4f4b-a952-7335ab1965b2": {},
				"5fe8e02d-05f3-4c8b-ad98-4534d4401d4d": {},
				"9d7e6704-7517-4536-a059-9eb77b1c7959": {},
				"cffb5c08-2e22-4c7c-84ce-48cc9c55212d": {},
				"2619b3ce-8876-42e1-bd12-f6ad6976128d": {},
				"10b880b1-937e-460b-a815-90c012231c33": {},
				"ab750a0c-d4c2-4c08-91eb-4057f2db6aaa": {},
				"f3a7fa0c-0848-4fdd-8f50-789f49c3095a": {},
				"63c8b20d-b0c2-46c6-9a40-09e517fd6869": {},
				"44b4635b-dcff-45b7-bf70-77e404581dbc": {},
				"8fc59445-b261-4de7-b5f0-ea467209446b": {},
				"50e3d20f-4d1f-4431-ba43-5d70e8831ec0": {}
			}
		},
		"63f69a3d-2d30-4b37-8d10-61cd29225016": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"93dd1ed0-00c4-4f90-8918-23d6d22e1bc7": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1028,
			"y": 24.5,
			"width": 35,
			"height": 35,
			"object": "8b7692ac-649b-4c6c-9cd5-e776856c0196"
		},
		"2223d2ac-162d-4534-bd47-f84fc75bb321": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,42 94,42",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "a193e896-00ab-4d67-aaa3-5dda2f0a41d0",
			"object": "355a138c-cfd7-451d-b6ae-d5d9a37f28df"
		},
		"a193e896-00ab-4d67-aaa3-5dda2f0a41d0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "71dd504f-b2ba-4699-a555-77e6ccda3974"
		},
		"70b46308-56f3-48f4-93e5-44afb66a3bf9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,42 244,42",
			"sourceSymbol": "a193e896-00ab-4d67-aaa3-5dda2f0a41d0",
			"targetSymbol": "885259b3-9011-4008-ae96-f59667e40bdf",
			"object": "67d314b1-c2ad-4c7a-b956-f88f53dd4c84"
		},
		"885259b3-9011-4008-ae96-f59667e40bdf": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 244,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "f7285ee4-f626-4920-a5c4-775b005976d7"
		},
		"77575700-bfd8-447c-b9a0-68b01fb7be34": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,42 394,42",
			"sourceSymbol": "885259b3-9011-4008-ae96-f59667e40bdf",
			"targetSymbol": "8f6fd12d-bcc5-43c5-840f-9ce65cc37698",
			"object": "dc5de5ff-17ba-4f97-ab6b-77d632bd050d"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"hubapireference": 1,
			"sequenceflow": 21,
			"startevent": 1,
			"endevent": 3,
			"usertask": 4,
			"servicetask": 3,
			"scripttask": 6,
			"exclusivegateway": 2
		},
		"9eadfa3f-fd27-4d3c-9fb4-20bda11b4138": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/exercicio/ProcessApproverDetails.js",
			"id": "scripttask5",
			"name": "Process Approver Details"
		},
		"8f6fd12d-bcc5-43c5-840f-9ce65cc37698": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 394,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "9eadfa3f-fd27-4d3c-9fb4-20bda11b4138"
		},
		"49f611d9-938f-44f8-bb1c-15a4f687ae98": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "9eadfa3f-fd27-4d3c-9fb4-20bda11b4138",
			"targetRef": "8418baef-4a2f-4030-a941-deca206fac35"
		},
		"ed54b765-ee90-4b1f-a590-ac03df0a2872": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "494,42 544,42",
			"sourceSymbol": "8f6fd12d-bcc5-43c5-840f-9ce65cc37698",
			"targetSymbol": "d450b7ea-2abd-487a-a4c8-565d34498580",
			"object": "49f611d9-938f-44f8-bb1c-15a4f687ae98"
		},
		"8418baef-4a2f-4030-a941-deca206fac35": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval Needed?",
			"default": "67fbbd0d-7914-4692-97fa-f734d58c9691"
		},
		"d450b7ea-2abd-487a-a4c8-565d34498580": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 544,
			"y": 21,
			"object": "8418baef-4a2f-4030-a941-deca206fac35"
		},
		"e7b18e4c-db1a-4d00-a209-7dc9b3ebaf39": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.internal.step.isRequired}",
			"id": "sequenceflow13",
			"name": "Yes",
			"sourceRef": "8418baef-4a2f-4030-a941-deca206fac35",
			"targetRef": "4a8a2f58-0dc9-48e2-a95b-7834779911a4"
		},
		"a09445e9-0a62-461b-b71d-b2986bc23a1b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "586,42 636,42",
			"sourceSymbol": "d450b7ea-2abd-487a-a4c8-565d34498580",
			"targetSymbol": "a232e0a6-65ce-4f4b-a952-7335ab1965b2",
			"object": "e7b18e4c-db1a-4d00-a209-7dc9b3ebaf39"
		},
		"4a8a2f58-0dc9-48e2-a95b-7834779911a4": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for Capital Expenditure Request \"${context.Title}\" in yout role as ${context.role}}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.internal.step.approver.UserId}",
			"recipientGroups": "${context.internal.step.approver.GrouprId}",
			"formReference": "/forms/exercicio/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "Approval task"
		},
		"a232e0a6-65ce-4f4b-a952-7335ab1965b2": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 636,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "4a8a2f58-0dc9-48e2-a95b-7834779911a4"
		},
		"0bdf184d-495a-4aa3-aaae-089b784463c3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "4a8a2f58-0dc9-48e2-a95b-7834779911a4",
			"targetRef": "365dbeb8-d9cb-4be4-9a78-8abf0140fb5c"
		},
		"5fe8e02d-05f3-4c8b-ad98-4534d4401d4d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "736,42 786,42",
			"sourceSymbol": "a232e0a6-65ce-4f4b-a952-7335ab1965b2",
			"targetSymbol": "9d7e6704-7517-4536-a059-9eb77b1c7959",
			"object": "0bdf184d-495a-4aa3-aaae-089b784463c3"
		},
		"365dbeb8-d9cb-4be4-9a78-8abf0140fb5c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/exercicio/ProcessApprovalResult.js",
			"id": "scripttask6",
			"name": "Process Approval Result"
		},
		"9d7e6704-7517-4536-a059-9eb77b1c7959": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 786,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "365dbeb8-d9cb-4be4-9a78-8abf0140fb5c"
		},
		"a9113375-80a9-47b9-bac4-c01b7dad21ee": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "365dbeb8-d9cb-4be4-9a78-8abf0140fb5c",
			"targetRef": "2813bd92-b8fe-4cf6-aeaa-17176a987d08"
		},
		"cffb5c08-2e22-4c7c-84ce-48cc9c55212d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "886,42 936,42",
			"sourceSymbol": "9d7e6704-7517-4536-a059-9eb77b1c7959",
			"targetSymbol": "2619b3ce-8876-42e1-bd12-f6ad6976128d",
			"object": "a9113375-80a9-47b9-bac4-c01b7dad21ee"
		},
		"2813bd92-b8fe-4cf6-aeaa-17176a987d08": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Approval Decision",
			"default": "4714b3c5-ddd7-4f41-801a-9d8040ef9966"
		},
		"2619b3ce-8876-42e1-bd12-f6ad6976128d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 936,
			"y": 21,
			"object": "2813bd92-b8fe-4cf6-aeaa-17176a987d08"
		},
		"4714b3c5-ddd7-4f41-801a-9d8040ef9966": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "Rejected",
			"sourceRef": "2813bd92-b8fe-4cf6-aeaa-17176a987d08",
			"targetRef": "8b7692ac-649b-4c6c-9cd5-e776856c0196"
		},
		"10b880b1-937e-460b-a815-90c012231c33": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "978,42 1028,42",
			"sourceSymbol": "2619b3ce-8876-42e1-bd12-f6ad6976128d",
			"targetSymbol": "93dd1ed0-00c4-4f90-8918-23d6d22e1bc7",
			"object": "4714b3c5-ddd7-4f41-801a-9d8040ef9966"
		},
		"6f74680f-d949-47e4-a064-0e33cd9e5451": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Reowrk required for CapEx Request \"${context.Title}\"",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.Requester.UserId}, ${info.startedBy}",
			"formReference": "/forms/exercicio/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask4",
			"name": "Rework Approval Request"
		},
		"ab750a0c-d4c2-4c08-91eb-4057f2db6aaa": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 87,
			"y": -114,
			"width": 100,
			"height": 60,
			"object": "6f74680f-d949-47e4-a064-0e33cd9e5451"
		},
		"6a0f1799-2df4-4f35-9b54-a13929106c86": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "6f74680f-d949-47e4-a064-0e33cd9e5451",
			"targetRef": "71dd504f-b2ba-4699-a555-77e6ccda3974"
		},
		"f3a7fa0c-0848-4fdd-8f50-789f49c3095a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "140.5,-84 140.5,12.5",
			"sourceSymbol": "ab750a0c-d4c2-4c08-91eb-4057f2db6aaa",
			"targetSymbol": "a193e896-00ab-4d67-aaa3-5dda2f0a41d0",
			"object": "6a0f1799-2df4-4f35-9b54-a13929106c86"
		},
		"40c44292-d50d-4940-8eec-0ea4bb55e78e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"rework\"}",
			"id": "sequenceflow19",
			"name": "Rework",
			"sourceRef": "2813bd92-b8fe-4cf6-aeaa-17176a987d08",
			"targetRef": "6f74680f-d949-47e4-a064-0e33cd9e5451"
		},
		"63c8b20d-b0c2-46c6-9a40-09e517fd6869": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "957,42 957,-85 186.5,-85",
			"sourceSymbol": "2619b3ce-8876-42e1-bd12-f6ad6976128d",
			"targetSymbol": "ab750a0c-d4c2-4c08-91eb-4057f2db6aaa",
			"object": "40c44292-d50d-4940-8eec-0ea4bb55e78e"
		},
		"7a09515e-0781-430a-82c1-8b231cffa2b0": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "End Approval Step"
		},
		"44b4635b-dcff-45b7-bf70-77e404581dbc": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 939.5,
			"y": 119.5,
			"width": 35,
			"height": 35,
			"object": "7a09515e-0781-430a-82c1-8b231cffa2b0"
		},
		"b5d137ce-54fa-4826-983e-db6cc5d8732f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"approve\"}",
			"id": "sequenceflow20",
			"name": "Accepted",
			"sourceRef": "2813bd92-b8fe-4cf6-aeaa-17176a987d08",
			"targetRef": "7a09515e-0781-430a-82c1-8b231cffa2b0"
		},
		"8fc59445-b261-4de7-b5f0-ea467209446b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "957,42 957,120",
			"sourceSymbol": "2619b3ce-8876-42e1-bd12-f6ad6976128d",
			"targetSymbol": "44b4635b-dcff-45b7-bf70-77e404581dbc",
			"object": "b5d137ce-54fa-4826-983e-db6cc5d8732f"
		},
		"67fbbd0d-7914-4692-97fa-f734d58c9691": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "No",
			"sourceRef": "8418baef-4a2f-4030-a941-deca206fac35",
			"targetRef": "7a09515e-0781-430a-82c1-8b231cffa2b0"
		},
		"50e3d20f-4d1f-4431-ba43-5d70e8831ec0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "565,42 565,137.5 940,137.5",
			"sourceSymbol": "d450b7ea-2abd-487a-a4c8-565d34498580",
			"targetSymbol": "44b4635b-dcff-45b7-bf70-77e404581dbc",
			"object": "67fbbd0d-7914-4692-97fa-f734d58c9691"
		},
		"54f5b8cb-6a21-4492-8823-4c2bdeae1d1e": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/exercicio/CapexSampleStartPayload.json",
			"id": "default-start-context"
		}
	}
}