package arrayutil

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestContains(t *testing.T) {
	src := []string{"1", "2", "3"}
	result := Contains(src, "1")
	assert.Equal(t, result, true)
}
