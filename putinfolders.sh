shopt -s nullglob

for filename in *; do
  if [ -d "${filename}" ]; then 
    continue
  fi
  if [ "${filename}" == "putinfolders.sh" ] || [ "${filename}" == "desktop.ini" ]; then 
    continue
  fi
  filename_noext="$(echo "${filename}" | rev | cut -d "." -f2- | rev)"
  mkdir -p "${filename_noext}"
  for this_movie_elem in "${filename_noext}".*; do
    mv "${this_movie_elem}" "${filename_noext}"
  done
done
