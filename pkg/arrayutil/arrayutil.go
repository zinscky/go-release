package arrayutil

func Contains(src []string, elem string) bool {
	for _, v := range src {
		if v == elem {
			return true
		}
	}
	return false
}
