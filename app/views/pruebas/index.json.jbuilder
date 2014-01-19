json.array!(@pruebas) do |prueba|
  json.extract! prueba, :id, :nombre, :descripcion
  json.url prueba_url(prueba, format: :json)
end
