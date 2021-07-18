<template>
  <div>
      
      <CCard>
        <CCardHeader>Simple line chart</CCardHeader>
        <CCardBody>
          <CChartLineSimple border-color="success" labels="months"/>
        </CCardBody>        
      </CCard>
      <CCard>
        <CCardHeader>Simple pointed chart</CCardHeader>
        <CCardBody><CChartLineSimple pointed border-color="warning"/></CCardBody>
      </CCard>
      <CCard>
        <CCardHeader>Detailed Chart</CCardHeader>
        <CCardBody>
          <AmChart  />
        </CCardBody>        
      </CCard>
      <CCard>
        <CCardHeader>Stacked Chart</CCardHeader>
        <CCardBody>
          <AmStackedChart  />
        </CCardBody>        
      </CCard>
      <CCard>
        <CCardHeader>
          Line Chart
          <div class="card-header-actions">
            <a 
              href="https://coreui.io/vue/docs/components/charts" 
              class="card-header-action" 
              rel="noreferrer noopener" 
              target="_blank"
            >
              <small class="text-muted">docs</small>
            </a>
          </div>
        </CCardHeader>
        <CCardBody>
          <CChartLineExample/>
        </CCardBody>
      </CCard>
      
    
  </div>
</template>

<script>
import * as Lines from './index.js'
export default {
  name: 'Lines',
  components: {
    ...Lines
  }
}
</script>
