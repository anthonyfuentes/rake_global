require "rake"

module Rake

	def self.current_namespace
		self.current_task[:namespace]
	end

	def self.current_task(split = true)
		task = Rake.application.top_level_tasks[0]
		if split
			split_task(task)
		else
			task
		end
	end

	private

		def self.split_task(task)
			task_segments = task.split(/:/)
			{
				namespace: task_segments[0],
				task: task_segments[1]
			}
		end

end
