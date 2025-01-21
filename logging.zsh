#!/usr/bin/env zsh

########

MSG_DEBUG() {
  echo -n "[DEBUG]"
}

MSG_DOCS() {
  echo -n "[DOCS]"
}

MSG_ERROR() {
  echo -n "[ERROR]"
}

MSG_INFO() {
  echo -n "[INFO]"
}

MSG_OK() {
  echo -n "[OK]"
}

MSG_WARN() {
  echo -n "[WARN]"
}

########

log_debug() {
  echo "$(MSG_DEBUG) ${@}"
}

log_docs() {
  echo "$(MSG_DOCS) ${@}"
}

log_error() {
  echo "$(MSG_ERROR) ${@}"
}

log_info() {
  echo "$(MSG_INFO) ${@}"
}

log_ok() {
  echo "$(MSG_OK) ${@}"
}

log_warn() {
  echo "$(MSG_WARN) ${@}"
}

log_done() {
  log_ok "Done"
}

log_all() {
  log_debug ${@}
  log_docs ${@}
  log_error ${@}
  log_info ${@}
  log_ok ${@}
  log_warn ${@}
}