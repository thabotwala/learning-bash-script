#include <iostream>
#include <deque>
#include <vector>

std::ostream& operator<<(std::ostream& stream, std::deque<int>& deq){
  stream << "[";
  for(std::size_t i = 0; i < (deq.size() - 1);i++){
    stream << deq[i] << ", ";
  }
  stream << deq[deq.size()-1] <<"]";
  return stream;
}

int main(){
  srand(time(0));
  std::vector<int> vect;
  for(short i = 0; i < 10; i++){
    vect.push_back(rand()%101);
  }
  void* hold = &vect;
  std::deque<int> *array = static_cast<std::deque<int>*>(hold);

//  std::cout << array << "\n";
  std::cout << &vect << "\n" << *array << "\n";
}
