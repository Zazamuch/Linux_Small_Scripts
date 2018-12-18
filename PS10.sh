#!/bin/bash
ps -eo pid,comm,%mem,%cpu --sort -%mem | head
