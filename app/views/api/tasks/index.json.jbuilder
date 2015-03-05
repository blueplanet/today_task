json.array! @tasks do |task|
  json.id task.id
  json.name task.name
  json.completed task.completed
end
