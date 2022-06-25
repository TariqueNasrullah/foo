package main

import (
	"fmt"
	"github.com/go-chi/chi"
	"net/http"
)

func main() {
	r := chi.NewMux()

	r.HandleFunc("/test", func(writer http.ResponseWriter, request *http.Request) {
		fmt.Println("hit")
		writer.Write([]byte("ok"))
	})

	fmt.Println("Serving Secure Gateway on :8088")
	if err := http.ListenAndServe(":8088", r); err != nil {
		fmt.Println(err)
	}
}
