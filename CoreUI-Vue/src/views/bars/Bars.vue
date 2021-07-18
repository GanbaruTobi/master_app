<template>
  <div>
 
  <CCard>
    <CCardHeader>Bar Chart</CCardHeader>
    <CCardBody><CChartBarExample/></CCardBody>
  </CCard>   
    
  </div>
</template>

<script>
import * as Bars from './index.js'
export default {
  name: 'Bars',
  components: {
    ...Bars
  }
}
</script>
