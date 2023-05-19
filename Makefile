.PHONY: build

build:
	python setup.py build_ext -b build_lib # --isolated
	#python setup.py build_ext --inplace

run: build
	python main.py