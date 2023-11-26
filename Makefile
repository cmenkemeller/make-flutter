.PHONY: pub_get build_runner format pretty test open_coverage run_tests_with_coverage fix

pub_get:
	@echo "👟 Running Flutter pub get..."
	@flutter pub get

build_runner:
	@echo "🛠️ Running build_runner..."
	@dart run build_runner build --delete-conflicting-outputs

format_lib:
	@echo "🦋📖 Formatting code in lib directory..."
	@dart format lib

format: format_lib format_tests

format_tests:
	@echo "🦋🤖 Formatting code in tests directory..."
	@dart format test

run_tests_with_coverage:
	@echo "✏️🤖 Running tests with coverage..."
	@dart pub global run full_coverage
	@flutter test --coverage
	@lcov --remove coverage/lcov.info '**/*.g.dart' -o coverage/lcov.info
	@genhtml coverage/lcov.info -o coverage/html

open_coverage:
	@open coverage/html/index.html

test: run_tests_with_coverage open_coverage

pretty: pub_get build_runner format

fix: 
	@dart fix --apply
