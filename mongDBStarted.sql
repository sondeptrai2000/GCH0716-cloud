use('StudentDB');

db.Student.drop();

db.Student.insertMany([
    {"id": 1, name: "Hung", birthday: "12/10/2000", weigh: 70},
    {id: 2, name: "Linh", birthday: "12/12/2000", weigh: 45},
    {id: 3, name: "Hoang", birthday: "12/10/2000", weigh: 67},
    {id: 4, name: "Son", birthday: "12/10/2000", weigh: 61},
    {id: 5, name: "", birthday: "12/10/2000", weigh: 68}
]);

db.Student.find({weigh: {$gte:45}})

db.Student.updateOne({name:"Linh"},{$set:{name:"Hoa"}})
db.Student.remove({name:"Hoa"})
db.Student.find({})
