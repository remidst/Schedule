date_format = event.all_day_event? ? '%Y-%m-%d' : '%Y-%m-%dT%H:%M:%S'

json.extract! appointment, :id, :title, :description, :start, :end

json.allDay appointment.all_day_event? ? true : false

json.edit_url edit_appointment_url(appointment)
json.update_url appointment_url(appointment, method: :patch)
