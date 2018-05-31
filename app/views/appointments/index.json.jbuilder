json.array!(@appointments) do |appointment|
json.extract! appointment, :id, :title, :description, :start, :end

json.base_url appointment_url(appointment)
json.edit_url edit_appointment_url(appointment)
json.update_url appointment_url(appointment, method: :patch)
end