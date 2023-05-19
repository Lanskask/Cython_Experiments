from setuptools import setup, Extension
from Cython.Build import cythonize

module = Extension('example', sources=['primes_module/*.pyx'])

setup(
    name='cythonTest',
    version='1.0',
    author='me',
    # ext_modules=[module],
    ext_modules=cythonize(module),
    zip_safe=False,
)

