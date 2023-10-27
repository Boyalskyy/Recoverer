package main

import (
	"fmt"
	"sync"
	"time"
)

func main() {
	wg := sync.WaitGroup{}
	wg.Add(1)
	go Printer(&wg)
	wg.Wait()

}

func Printer(wg *sync.WaitGroup) {
	defer wg.Done()
	for {
		time.Sleep(5 * time.Second)
		fmt.Println("Work....")
	}
}
