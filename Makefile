# Usage:
#   cd /path/to/moodle-performance-comparison
#   ./test_runner.sh [OPTIONS] {run_group_name} {run_description} {test_plan_file_path} {users_file_path}
#
# Arguments:
# * $1 => The run group name, there will be comparision graphs by this group name
# * $2 => The run description, useful to identify the changes between runs.
# * $3 => The test plan file path
# * $4 => The path to the file with user's login data
# * $5 => The path to the file with the tested site data
#
# Options:
# * -u => Force the number of users (threads)
# * -l => Force the number of loops
# * -r => Force the ramp-up period
# * -t => Force the throughput

shell:
	 ssh -p 22987 root@92.222.130.250

test_s:
	./test_runner.sh  clase1 "Test curso pequeño" ./data/testplanxs.jmx ./data/testusersxs.csv site_data.properties

test_xl:
	./test_runner.sh  clase1 "Test curso grande" ./data/testplanxl.jmx ./data/testusersxl.csv site_data.properties 

testx:
	./test_runner.sh -u 5 -l 2  clase1 "15 de mayo" ./data/testplan.jmx ./data/testusers.csv site_data.properties

server:
	docker-compose up -d

serverstop:
	docker-compose stop

