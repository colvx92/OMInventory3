Clinic.create(name: "Midtown Breasts")
Clinic.create(name:"South Miami Gastro")

Supply.create(clinic_id:1, name: 'Scalpel', current_amount:20)
Supply.create(clinic_id:1, name: 'Cotton Ball', current_amount:500)
Supply.create(clinic_id:1, name: 'Suture', current_amount:300)
Supply.create(clinic_id:1, name: 'Bandages', current_amount:450)
Supply.create(clinic_id:1, name: 'Implant', current_amount:15)
Supply.create(clinic_id:1, name: 'Silicone Tube', current_amount:30)

Surgery.create(name: "Endoscopy")
Surgery.create(name: "Breast Aug")
Surgery.create(name: "Liposuction")
Surgery.create(name: "Breast Reduction")
Surgery.create(name: "Brazilian Butt Implants")

s=0
5.times do |s|
  s+=1
  Appointment.create(date: "2017-10-6", clinic_id:1, surgery_id: s)
  Appointment.create(date: "2017-10-7", clinic_id:1, surgery_id: s)
end


i=0
5.times do |i|
  i+=1
  Usage.create(amount_used:4, supply_id:1, appointment_id:i)
  Usage.create(amount_used:100, supply_id:2, appointment_id:i)
  Usage.create(amount_used:50, supply_id:3, appointment_id:i)
  Usage.create(amount_used:10, supply_id:4, appointment_id:i)
  Usage.create(amount_used:10, supply_id:5, appointment_id:i)
  Usage.create(amount_used:10, supply_id:6, appointment_id:i)
end




# SupplyList.create(qty: 100, clinic_id: 1,supply_list_id: i )
# SupplyList.create(qty: 100, clinic_id: 1,supply_list_id: i )
# SupplyList.create(qty: 100, clinic_id: 1,supply_list_id: i )
# SupplyList.create(qty: 100, clinic_id: 1,supply_list_id: i )
# SupplyList.create(qty: 100, clinic_id: 1,supply_list_id: i )
