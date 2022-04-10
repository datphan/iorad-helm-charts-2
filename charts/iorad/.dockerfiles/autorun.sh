docker_exec() {
  if hash ct 2>/dev/null; then
    "$@"
  else
    docker exec --interactive ct "$@"
  fi
}

docker_exec kubectl apply -f charts/iorad/.dockerfiles/pvc.yaml