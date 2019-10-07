def time_string(time)
	# Change fuseau horaire : bonnes valeurs
  return Time.at(time).utc.strftime "%H:%M:%S".to_s
end
