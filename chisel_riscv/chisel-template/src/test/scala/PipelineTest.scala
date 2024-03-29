package pipeline

import chisel3._
import org.scalatest._
import chiseltest._
import cpu._

class HexTest extends FlatSpec with ChiselScalatestTester {
  "mycpu" should "work through hex" in {
    test(new Top) { c =>
      while (!c.io.exit.peek().litToBoolean){
        c.clock.step(1)
      }
    }
  }
}