#!/bin/sh -x

COMP="--file=2019 Dalmatian XC Paragliding Open"

fs-filter "$COMP"
fs-route "$COMP"
fs-arrival "$COMP"
fs-effort "$COMP"
fs-score "$COMP"

ft-extract-input "$COMP" --give-fraction=0.005 --haversines
ft-task-length "$COMP"
ft-cross-zone "$COMP"
ft-tag-zone "$COMP"
ft-peg-frame "$COMP"
ft-align-time "$COMP"
ft-discard-further "$COMP"
ft-area-step "$COMP"
ft-mask-track "$COMP"
ft-land-out "$COMP"
ft-gap-point "$COMP"

ft-comp-serve "$COMP"
