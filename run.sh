#!/bin/bash

if [[ -z "${NUM_WORKERS}" ]]; then
    w_option=""
else
    w_option=" -w ${NUM_WORKERS}"
fi
if [[ -z "${REMOTES}" ]]; then
    r_option=""
else
    r_option=" -r ${REMOTES}"
fi
if [[ -z "${ENV_ID}" ]]; then
    e_option=""
else
    e_option=" -e ${ENV_ID}"
fi
if [[ -z "${LOG_DIR}" ]]; then
    log_dir="/tmp/pong"
else
    log_dir="${LOG_DIR}"
fi
l_option=" -l ${log_dir}"
if [[ -z "${DRY_RUN}" ]]; then
    n_option=""
else
    n_option=" -n ${DRY_RUN}"
fi
if [[ -z "${MODE}" ]]; then
    m_option=" -m child"
else
    m_option=" -m ${MODE}"
fi
if [[ -z "${POLICY}" ]]; then
    p_option=""
else
    p_option=" -p ${POLICY}"
fi
if [[ -z "${VISUALIZE}" ]]; then
    v_option=""
else
    v_option=" --visualize"
fi

options="$w_option$r_option$e_option$l_option$n_option$m_option$p_option$v_option"
echo "options: $options"
python train.py $options && tail -f $log_dir/*.out
