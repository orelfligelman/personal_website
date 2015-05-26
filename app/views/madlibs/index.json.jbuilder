json.array!(@madlibs) do |madlib|
  json.extract! madlib, :id
  json.url madlib_url(madlib, format: :json)
end
